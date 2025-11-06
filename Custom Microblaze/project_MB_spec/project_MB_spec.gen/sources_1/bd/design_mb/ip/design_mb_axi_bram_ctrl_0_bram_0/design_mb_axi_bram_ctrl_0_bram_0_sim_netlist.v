// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Sep 30 12:00:03 2025
// Host        : DESKTOP-UE3BVQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Parvathy/project_MB_spec/project_MB_spec.gen/sources_1/bd/design_mb/ip/design_mb_axi_bram_ctrl_0_bram_0/design_mb_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_mb_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_mb_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_mb_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_mb_axi_bram_ctrl_0_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_mb_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52944)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
