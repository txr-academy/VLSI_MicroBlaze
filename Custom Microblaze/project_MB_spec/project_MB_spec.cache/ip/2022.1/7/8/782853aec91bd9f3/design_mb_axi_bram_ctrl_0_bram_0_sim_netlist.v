// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Sep 30 10:42:16 2025
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
  (* C_INIT_FILE = "NONE" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52768)
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
