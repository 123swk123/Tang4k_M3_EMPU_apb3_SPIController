//
//Written by GowinSynthesis
//Product Version "GowinSynthesis V1.9.8"
//Wed Dec 08 16:19:56 2021

//Source file index table:
//file0 "\D:/prjslocal/learnings/verilog/tang_4k/M3_EMPU_apbSPI/src/fifo_sc_hs/temp/FIFO_SC/fifo_sc_hs_define.v"
//file1 "\D:/prjslocal/learnings/verilog/tang_4k/M3_EMPU_apbSPI/src/fifo_sc_hs/temp/FIFO_SC/fifo_sc_hs_parameter.v"
//file2 "\D:/papps/platforms/Gowin/Gowin_V1.9.8/IDE/ipcore/FIFO_SC_HS/data/fifo_sc_hs.v"
//file3 "\D:/papps/platforms/Gowin/Gowin_V1.9.8/IDE/ipcore/FIFO_SC_HS/data/fifo_sc_hs_top.v"
`timescale 100 ps/100 ps
`pragma protect begin_protected
`pragma protect version="2.0"
`pragma protect author="default"
`pragma protect author_info="default"
`pragma protect encrypt_agent="GOWIN"
`pragma protect encrypt_agent_info="GOWIN Encrypt Version 2.0"

`pragma protect encoding=(enctype="base64", line_length=76, bytes=256)
`pragma protect key_keyowner="GOWIN",key_keyname="GWK2021-01",key_method="rsa"
`pragma protect key_block
bHWYsUKipNum3CGfjUUaHsH/EP201Flf13mTouldETK38VITawZccPZVUi0HIVkZHoGfU9lViERD
xPRmUPqYpmNh2JbuJlDP6BcTPCFx08vzGnmUPOAwk8NNodMmEUmKslIbWIeW5lLyHH9xsurCMyGO
clByjZ8L4qmqAYSLlE8uqMm+OOwdc7ms2+KW5G6i4xaie+4TlwAVtkMf1aANotESJxtPmclGXHJu
LgWKYvJUAYmS3lyRvfCcbdoA6PAvHyqXUMZ6a+7HnO5RL/+3hoxjge404OyNXwVBbhsso74GbhsQ
YvD9qtCglBIQvTeIPyMhINhrxg5yB5qLqmR8wg==

`pragma protect encoding=(enctype="base64", line_length=76, bytes=11152)
`pragma protect data_keyowner="default-ip-vendor"
`pragma protect data_keyname="default-ip-key"
`pragma protect data_method="aes128-cbc"
`pragma protect data_block
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
`pragma protect end_protected
module Fifo (
  Data,
  Clk,
  WrEn,
  RdEn,
  Reset,
  Q,
  Empty,
  Full
)
;
input [7:0] Data;
input Clk;
input WrEn;
input RdEn;
input Reset;
output [7:0] Q;
output Empty;
output Full;
wire VCC;
wire GND;
  \~fifo_sc_hs.Fifo  fifo_sc_hs_inst (
    .Clk(Clk),
    .Reset(Reset),
    .WrEn(WrEn),
    .RdEn(RdEn),
    .Data(Data[7:0]),
    .Full(Full),
    .Empty(Empty),
    .Q(Q[7:0])
);
  VCC VCC_cZ (
    .V(VCC)
);
  GND GND_cZ (
    .G(GND)
);
  GSR GSR (
    .GSRI(VCC) 
);
endmodule /* Fifo */
