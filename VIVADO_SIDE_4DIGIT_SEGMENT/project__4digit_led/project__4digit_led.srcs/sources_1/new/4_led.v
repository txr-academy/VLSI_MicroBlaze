`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025
// Design Name: Stopwatch
// Module Name: stopwatch_4digit_7seg
// Target Device: Arty A7
// Description: 4-digit stopwatch (MM:SS) on common-cathode 7-segment display
//////////////////////////////////////////////////////////////////////////////////

module stopwatch_4digit_7seg (
    input  wire clk,          // 100 MHz system clock
    input  wire rst,          // reset button (active high)
    input  wire start_btn,    // start/stop toggle button
    output reg  [6:0] seg,    // segments a-g (active high)
    output reg  [3:0] an      // digit enables (active high)
);

    // ============================================================
    // 1. Debounce start/stop button
    // ============================================================
    reg [19:0] db_count = 0;
    reg btn_sync = 0, btn_prev = 0;
    reg running = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            db_count <= 0;
            btn_sync <= 0;
            btn_prev <= 0;
            running <= 0;
        end else begin
            if (start_btn != btn_prev) begin
                db_count <= 0;
                btn_prev <= start_btn;
            end else if (db_count < 1_000_000) begin // 10ms debounce
                db_count <= db_count + 1;
            end else begin
                btn_sync <= start_btn;
            end

            // Toggle on rising edge after debounce
            if (btn_sync && !btn_prev)
                running <= ~running;
        end
    end

    // ============================================================
    // 2. 1 Hz clock divider
    // ============================================================
    parameter CLK_FREQ = 100_000_000;
    reg [26:0] counter_1hz = 0;
    reg one_sec_pulse = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter_1hz <= 0;
            one_sec_pulse <= 0;
        end else begin
            if (counter_1hz == CLK_FREQ - 1) begin
                counter_1hz <= 0;
                one_sec_pulse <= 1;
            end else begin
                counter_1hz <= counter_1hz + 1;
                one_sec_pulse <= 0;
            end
        end
    end

    // ============================================================
    // 3. Time counters (MM:SS)
    // ============================================================
    reg [5:0] seconds = 0;
    reg [5:0] minutes = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            seconds <= 0;
            minutes <= 0;
        end else if (running && one_sec_pulse) begin
            if (seconds == 59) begin
                seconds <= 0;
                if (minutes == 59)
                    minutes <= 0;
                else
                    minutes <= minutes + 1;
            end else begin
                seconds <= seconds + 1;
            end
        end
    end

    // ============================================================
    // 4. Digit Multiplexing (ghost-free)
    // ============================================================
    reg [1:0] digit_sel = 0;
    reg [3:0] digit_value;
    reg [15:0] mux_counter = 0;

    // ~1 kHz multiplex frequency
    always @(posedge clk) begin
        mux_counter <= mux_counter + 1;
    end

    always @(posedge mux_counter[15]) begin
        digit_sel <= digit_sel + 1;
    end

    // Split MM:SS
    wire [3:0] sec_ones = seconds % 10;
    wire [3:0] sec_tens = seconds / 10;
    wire [3:0] min_ones = minutes % 10;
    wire [3:0] min_tens = minutes / 10;

    reg [3:0] an_next;
    reg [3:0] seg_next;

    // Combinational segment select
    always @(*) begin
        case (digit_sel)
            2'b00: begin an_next = 4'b0001; digit_value = sec_ones; end
            2'b01: begin an_next = 4'b0010; digit_value = sec_tens; end
            2'b10: begin an_next = 4'b0100; digit_value = min_ones; end
            2'b11: begin an_next = 4'b1000; digit_value = min_tens; end
        endcase
    end

    // 7-segment decoder (common cathode, active HIGH)
    always @(*) begin
        case (digit_value)
            4'd0: seg_next = 7'b0111111;
            4'd1: seg_next = 7'b0000110;
            4'd2: seg_next = 7'b1011011;
            4'd3: seg_next = 7'b1001111;
            4'd4: seg_next = 7'b1100110;
            4'd5: seg_next = 7'b1101101;
            4'd6: seg_next = 7'b1111101;
            4'd7: seg_next = 7'b0000111;
            4'd8: seg_next = 7'b1111111;
            4'd9: seg_next = 7'b1101111;
            default: seg_next = 7'b0000000;
        endcase
    end

    // REGISTERED OUTPUT (prevents ghosting)
    reg [3:0] blank_cnt = 0;
    always @(posedge clk) begin
        blank_cnt <= blank_cnt + 1;
        if (blank_cnt == 0) begin
            an <= 4'b0000;        // blank all digits briefly
            seg <= 7'b0000000;
        end else begin
            an <= an_next;        // enable current digit
            seg <= seg_next;      // update segment data
        end
    end

endmodule
