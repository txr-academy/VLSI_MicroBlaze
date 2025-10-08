// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Sep 30 12:00:03 2025
// Host        : DESKTOP-UE3BVQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_mb_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_mb_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_mb_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52800)
`pragma protect data_block
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
F7xdzVEAVzh5szdZmeTXe0nJ
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
