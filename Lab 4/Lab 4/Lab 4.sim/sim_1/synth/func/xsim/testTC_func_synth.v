// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 31 11:56:59 2019
// Host        : JULIAN-SURFACE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Julian/Documents/Work/CSE 100/Lab 4/Lab 4/Lab
//               4.sim/sim_1/synth/func/xsim/testTC_func_synth.v}
// Design      : toppo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CB4CE_MXILINX_clkcntrl4
   (CEO,
    C);
  output CEO;
  input C;

  wire C;
  wire CEO;
  wire I_36_31_n_0;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(I_36_31_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_67
       (.I0(1'b1),
        .I1(I_36_31_n_0),
        .O(CEO));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_17 I_Q0
       (.C(C),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_18 I_Q1
       (.C(C),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_19 I_Q2
       (.C(C),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_20 I_Q3
       (.C(C),
        .Q(I_Q3_n_0),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_3
   (CEO,
    CE,
    C);
  output CEO;
  input CE;
  input C;

  wire C;
  wire CE;
  wire CEO;
  wire I_36_31_n_0;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(I_36_31_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_67
       (.I0(CE),
        .I1(I_36_31_n_0),
        .O(CEO));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_13 I_Q0
       (.C(C),
        .CE(CE),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_14 I_Q1
       (.C(C),
        .CE(CE),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_15 I_Q2
       (.C(C),
        .CE(CE),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_16 I_Q3
       (.C(C),
        .CE(CE),
        .Q(I_Q3_n_0),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_4
   (Q3,
    CE,
    C);
  output Q3;
  input CE;
  input C;

  wire C;
  wire CE;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire Q3;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_9 I_Q0
       (.C(C),
        .CE(CE),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_10 I_Q1
       (.C(C),
        .CE(CE),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_11 I_Q2
       (.C(C),
        .CE(CE),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_12 I_Q3
       (.C(C),
        .CE(CE),
        .Q3(Q3),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_5
   (TC,
    clk_out);
  output TC;
  input clk_out;

  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;
  wire TC;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(TC));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4 I_Q0
       (.Q(I_Q0_n_0),
        .clk_out(clk_out));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_6 I_Q1
       (.Q(I_Q1_n_0),
        .Q0(I_Q0_n_0),
        .clk_out(clk_out));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_7 I_Q2
       (.Q(I_Q2_n_0),
        .T(T2),
        .clk_out(clk_out));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_8 I_Q3
       (.Q(I_Q3_n_0),
        .T(T3),
        .clk_out(clk_out));
endmodule

module FTCE_MXILINX_clkcntrl4
   (Q,
    clk_out);
  output Q;
  input clk_out;

  wire Q;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_10
   (Q,
    Q0,
    CE,
    C);
  output Q;
  input Q0;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_11
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_12
   (Q3,
    T,
    CE,
    C);
  output Q3;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q3;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q3),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q3));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_13
   (Q,
    CE,
    C);
  output Q;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_14
   (Q,
    Q0,
    CE,
    C);
  output Q;
  input Q0;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_15
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_16
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_17
   (Q,
    C);
  output Q;
  input C;

  wire C;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_18
   (Q,
    Q0,
    C);
  output Q;
  input Q0;
  input C;

  wire C;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_19
   (Q,
    T,
    C);
  output Q;
  input T;
  input C;

  wire C;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_20
   (Q,
    T,
    C);
  output Q;
  input T;
  input C;

  wire C;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_6
   (Q,
    Q0,
    clk_out);
  output Q;
  input Q0;
  input clk_out;

  wire Q;
  wire Q0;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_7
   (Q,
    T,
    clk_out);
  output Q;
  input T;
  input clk_out;

  wire Q;
  wire T;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_8
   (Q,
    T,
    clk_out);
  output Q;
  input T;
  input clk_out;

  wire Q;
  wire T;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_9
   (Q,
    CE,
    C);
  output Q;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

module clk_wiz_0
   (clk_out1,
    clkin,
    greset);
  output clk_out1;
  input clkin;
  input greset;

  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire clkin;
  wire greset;
  wire mmcm_adv_inst_n_16;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clkin),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_adv_inst_n_16),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(greset));
endmodule

module clkcntrl4
   (clk_out,
    digsel,
    fastclk);
  output clk_out;
  output digsel;
  input fastclk;

  wire XLXN_70;
  wire XLXN_72;
  wire XLXN_75;
  wire XLXN_77;
  wire clk_out;
  wire clkb2_DUMMY;
  wire digsel;
  wire fastclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    XLXI_328
       (.I0(fastclk),
        .O(clkb2_DUMMY));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    XLXI_336
       (.I0(XLXN_75),
        .O(digsel));
  (* HU_SET = "XLXI_37_73" *) 
  CB4CE_MXILINX_clkcntrl4 XLXI_37
       (.C(clkb2_DUMMY),
        .CEO(XLXN_72));
  (* HU_SET = "XLXI_38_74" *) 
  CB4CE_MXILINX_clkcntrl4_3 XLXI_38
       (.C(clkb2_DUMMY),
        .CE(XLXN_72),
        .CEO(XLXN_70));
  (* HU_SET = "XLXI_39_75" *) 
  CB4CE_MXILINX_clkcntrl4_4 XLXI_39
       (.C(clkb2_DUMMY),
        .CE(XLXN_70),
        .Q3(XLXN_77));
  CB4CE_MXILINX_clkcntrl4_5 XLXI_40
       (.TC(XLXN_75),
        .clk_out(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG XLXI_401
       (.I(XLXN_77),
        .O(clk_out));
endmodule

module countUD16L
   (qOut,
    dp_OBUF,
    up_in,
    ce,
    clk,
    out,
    btnL_IBUF,
    led_OBUF,
    edge_dw,
    btnC_IBUF,
    flip4,
    flip0,
    q1,
    btnD_IBUF,
    q0);
  output [15:0]qOut;
  output dp_OBUF;
  output up_in;
  input ce;
  input clk;
  input [1:0]out;
  input btnL_IBUF;
  input [15:0]led_OBUF;
  input edge_dw;
  input btnC_IBUF;
  input flip4;
  input flip0;
  input q1;
  input btnD_IBUF;
  input q0;

  wire Dw02_out;
  wire Dw03_out;
  wire Up0__0;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire ce;
  wire ce_0;
  wire ce_2;
  wire clk;
  wire count0to2_n_10;
  wire count0to2_n_11;
  wire count0to2_n_12;
  wire count0to2_n_13;
  wire count0to2_n_6;
  wire count13to15_n_3;
  wire count13to15_n_4;
  wire count3to7_n_10;
  wire count3to7_n_5;
  wire count3to7_n_8;
  wire count8to12_n_6;
  wire count8to12_n_7;
  wire count8to12_n_8;
  wire dp_OBUF;
  wire dtcOut;
  wire edge_dw;
  wire flip0;
  wire flip4;
  wire [15:0]led_OBUF;
  wire [1:0]out;
  wire out_0;
  wire out_0_1;
  wire p_4_in;
  wire q0;
  wire q1;
  wire [15:0]qOut;
  wire up_in;

  countUD3L count0to2
       (.Dw02_out(Dw02_out),
        .Dw03_out(Dw03_out),
        .Up0__0(Up0__0),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL(count0to2_n_6),
        .btnL_IBUF(btnL_IBUF),
        .ce(ce),
        .ce_0(ce_0),
        .clk(clk),
        .dp(count13to15_n_3),
        .dp_OBUF(dp_OBUF),
        .dp_OBUF_inst_i_3(qOut[15]),
        .dp_OBUF_inst_i_3_0(qOut[13]),
        .dp_OBUF_inst_i_3_1(qOut[14]),
        .dtcOut(dtcOut),
        .edge_dw(edge_dw),
        .flip0_0(qOut[0]),
        .flip0_1(up_in),
        .flip0_2(qOut[3]),
        .flip0_3(count8to12_n_7),
        .flip0_4(qOut[8]),
        .flip0_5(count3to7_n_8),
        .flip0_6(flip0),
        .flip1_0(qOut[1]),
        .flip1_1(count0to2_n_11),
        .flip1_2(count13to15_n_4),
        .flip1_3(count8to12_n_8),
        .flip1_4(flip4),
        .flip2_0(qOut[2]),
        .flip2_1(count0to2_n_10),
        .flip2_2(count0to2_n_12),
        .flip2_3(count0to2_n_13),
        .led_OBUF({led_OBUF[8],led_OBUF[3:0]}),
        .out(out),
        .out_0(out_0_1),
        .out_0_1(out_0),
        .p_4_in(p_4_in),
        .q0(q0),
        .q1(q1));
  countUD3L_1 count13to15
       (.Dw03_out(Dw03_out),
        .Up0__0(Up0__0),
        .btnL_IBUF(btnL_IBUF),
        .ce(ce_2),
        .clk(clk),
        .dp_OBUF_inst_i_1(count3to7_n_8),
        .dp_OBUF_inst_i_1_0(count8to12_n_8),
        .flip0_0(qOut[13]),
        .flip0_1(count0to2_n_6),
        .flip1_0(qOut[14]),
        .flip1_1(count13to15_n_3),
        .flip1_2(count8to12_n_6),
        .flip2_0(qOut[15]),
        .flip2_1(count13to15_n_4),
        .flip2_2(count3to7_n_5),
        .flip2_3(count8to12_n_7),
        .led_OBUF(led_OBUF[15:13]),
        .qOut(qOut[2]));
  countUD5L count3to7
       (.Dw03_out(Dw03_out),
        .Up0__0(Up0__0),
        .btnC_IBUF(btnC_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .ce(ce_2),
        .ce_0(ce_0),
        .clk(clk),
        .flip0_0(qOut[3]),
        .flip0_1(count8to12_n_7),
        .flip0_2(count0to2_n_10),
        .flip0_3(count13to15_n_4),
        .flip0_4(flip4),
        .flip0_5(count8to12_n_8),
        .flip1_0(qOut[4]),
        .flip1_1(count3to7_n_8),
        .flip2_0(qOut[5]),
        .flip2_1(count3to7_n_5),
        .flip2_2(count3to7_n_10),
        .flip2_3(count0to2_n_12),
        .flip3_0(qOut[6]),
        .flip3_1(count0to2_n_13),
        .flip4_0(qOut[7]),
        .led_OBUF(led_OBUF[7:4]),
        .out_0(out_0_1),
        .p_4_in(p_4_in),
        .up_in(up_in));
  countUD5L_2 count8to12
       (.Dw02_out(Dw02_out),
        .Dw03_out(Dw03_out),
        .Up0__0(Up0__0),
        .btnC_IBUF(btnC_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .clk(clk),
        .dtcOut(dtcOut),
        .edge_dw(edge_dw),
        .flip0_0(qOut[8]),
        .flip0_1(count8to12_n_8),
        .flip0_2(qOut[6]),
        .flip0_3(qOut[5]),
        .flip1_0(qOut[9]),
        .flip1_1(count3to7_n_10),
        .flip1_2(count0to2_n_11),
        .flip2_0(qOut[10]),
        .flip2_1(count8to12_n_6),
        .flip2_2(count8to12_n_7),
        .flip3_0(qOut[11]),
        .flip4_0(qOut[12]),
        .flip4_1(flip4),
        .flip4_2(count13to15_n_4),
        .flip4_3(count0to2_n_10),
        .flip4_4(count3to7_n_8),
        .led_OBUF(led_OBUF[12:9]),
        .out_0(out_0),
        .qOut({qOut[7],qOut[4:3]}));
endmodule

module countUD3L
   (flip2_0,
    flip1_0,
    flip0_0,
    dp_OBUF,
    out_0,
    ce_0,
    btnL,
    Dw03_out,
    out_0_1,
    p_4_in,
    flip2_1,
    flip1_1,
    flip2_2,
    flip2_3,
    ce,
    clk,
    out,
    dp,
    dtcOut,
    btnL_IBUF,
    led_OBUF,
    flip0_1,
    edge_dw,
    flip0_2,
    flip0_3,
    Up0__0,
    flip0_4,
    Dw02_out,
    flip0_5,
    flip1_2,
    flip1_3,
    btnC_IBUF,
    flip1_4,
    flip0_6,
    q1,
    btnD_IBUF,
    q0,
    dp_OBUF_inst_i_3,
    dp_OBUF_inst_i_3_0,
    dp_OBUF_inst_i_3_1);
  output flip2_0;
  output flip1_0;
  output flip0_0;
  output dp_OBUF;
  output out_0;
  output ce_0;
  output btnL;
  output Dw03_out;
  output out_0_1;
  output p_4_in;
  output flip2_1;
  output flip1_1;
  output flip2_2;
  output flip2_3;
  input ce;
  input clk;
  input [1:0]out;
  input dp;
  input dtcOut;
  input btnL_IBUF;
  input [4:0]led_OBUF;
  input flip0_1;
  input edge_dw;
  input flip0_2;
  input flip0_3;
  input Up0__0;
  input flip0_4;
  input Dw02_out;
  input flip0_5;
  input flip1_2;
  input flip1_3;
  input btnC_IBUF;
  input flip1_4;
  input flip0_6;
  input q1;
  input btnD_IBUF;
  input q0;
  input dp_OBUF_inst_i_3;
  input dp_OBUF_inst_i_3_0;
  input dp_OBUF_inst_i_3_1;

  wire Dw02_out;
  wire Dw03_out;
  wire Up0__0;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire ce;
  wire ce_0;
  wire clk;
  wire dp;
  wire dp_OBUF;
  wire dp_OBUF_inst_i_3;
  wire dp_OBUF_inst_i_3_0;
  wire dp_OBUF_inst_i_3_1;
  wire dtcOut;
  wire edge_dw;
  wire flip0_0;
  wire flip0_1;
  wire flip0_2;
  wire flip0_3;
  wire flip0_4;
  wire flip0_5;
  wire flip0_6;
  wire flip0_i_2__1_n_0;
  wire flip0_i_2_n_0;
  wire flip1_0;
  wire flip1_1;
  wire flip1_2;
  wire flip1_3;
  wire flip1_4;
  wire flip2_0;
  wire flip2_1;
  wire flip2_2;
  wire flip2_3;
  wire flip2_i_4_n_0;
  wire [4:0]led_OBUF;
  wire [1:0]out;
  wire out_0;
  wire out_0_0;
  wire out_0_1;
  wire out_1;
  wire out_2;
  wire p_4_in;
  wire q0;
  wire q1;

  LUT6 #(
    .INIT(64'hAA2AAA2A55D5AA2A)) 
    dp_OBUF_inst_i_1
       (.I0(out[1]),
        .I1(flip1_0),
        .I2(flip0_0),
        .I3(dp),
        .I4(out[0]),
        .I5(dtcOut),
        .O(dp_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dp_OBUF_inst_i_6
       (.I0(flip1_0),
        .I1(flip0_0),
        .I2(flip2_0),
        .I3(dp_OBUF_inst_i_3),
        .I4(dp_OBUF_inst_i_3_0),
        .I5(dp_OBUF_inst_i_3_1),
        .O(flip1_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip0
       (.C(clk),
        .CE(ce),
        .D(out_0_0),
        .Q(flip0_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF606060)) 
    flip0_i_1
       (.I0(flip0_2),
        .I1(ce_0),
        .I2(flip0_i_2_n_0),
        .I3(btnL_IBUF),
        .I4(led_OBUF[3]),
        .O(out_0));
  LUT4 #(
    .INIT(16'h88B8)) 
    flip0_i_1__1
       (.I0(led_OBUF[4]),
        .I1(btnL_IBUF),
        .I2(flip0_i_2__1_n_0),
        .I3(flip0_4),
        .O(out_0_1));
  LUT4 #(
    .INIT(16'hF404)) 
    flip0_i_1__2
       (.I0(flip0_0),
        .I1(flip0_6),
        .I2(btnL_IBUF),
        .I3(led_OBUF[0]),
        .O(out_0_0));
  LUT6 #(
    .INIT(64'h0000000081018000)) 
    flip0_i_2
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(flip2_0),
        .I3(flip0_1),
        .I4(edge_dw),
        .I5(btnL_IBUF),
        .O(flip0_i_2_n_0));
  LUT4 #(
    .INIT(16'h5104)) 
    flip0_i_2__0
       (.I0(btnL_IBUF),
        .I1(Dw03_out),
        .I2(flip0_3),
        .I3(Up0__0),
        .O(btnL));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    flip0_i_2__1
       (.I0(Dw02_out),
        .I1(flip0_5),
        .I2(flip0_0),
        .I3(flip1_0),
        .I4(flip2_0),
        .I5(flip0_1),
        .O(flip0_i_2__1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip1
       (.C(clk),
        .CE(ce),
        .D(out_1),
        .Q(flip1_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA00AAC3AA3CAA00)) 
    flip1_i_1__0
       (.I0(led_OBUF[1]),
        .I1(flip0_0),
        .I2(flip1_0),
        .I3(btnL_IBUF),
        .I4(flip0_1),
        .I5(edge_dw),
        .O(out_1));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    flip1_i_2__0
       (.I0(flip2_0),
        .I1(flip1_0),
        .I2(flip0_0),
        .I3(q1),
        .I4(btnD_IBUF),
        .I5(q0),
        .O(Dw03_out));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80000)) 
    flip1_i_3
       (.I0(flip2_1),
        .I1(flip1_2),
        .I2(flip1_3),
        .I3(flip0_5),
        .I4(btnC_IBUF),
        .I5(flip1_4),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    flip1_i_4
       (.I0(flip2_0),
        .I1(flip1_0),
        .I2(flip0_0),
        .O(flip2_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip2
       (.C(clk),
        .CE(ce),
        .D(out_2),
        .Q(flip2_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    flip2_i_2__0
       (.I0(flip2_i_4_n_0),
        .I1(btnL_IBUF),
        .I2(led_OBUF[2]),
        .O(out_2));
  LUT6 #(
    .INIT(64'h0000342C00000810)) 
    flip2_i_4
       (.I0(flip1_0),
        .I1(flip0_1),
        .I2(edge_dw),
        .I3(flip0_0),
        .I4(btnL_IBUF),
        .I5(flip2_0),
        .O(flip2_i_4_n_0));
  LUT6 #(
    .INIT(64'hEAABAAABEAAAAAAA)) 
    flip4_i_1__0
       (.I0(btnL_IBUF),
        .I1(flip0_0),
        .I2(flip1_0),
        .I3(flip2_0),
        .I4(flip0_1),
        .I5(edge_dw),
        .O(ce_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    flip4_i_5__0
       (.I0(flip2_0),
        .I1(flip1_0),
        .I2(flip0_0),
        .I3(flip0_1),
        .I4(btnL_IBUF),
        .O(flip2_3));
  LUT5 #(
    .INIT(32'h00000004)) 
    flip4_i_6__0
       (.I0(btnL_IBUF),
        .I1(edge_dw),
        .I2(flip2_0),
        .I3(flip1_0),
        .I4(flip0_0),
        .O(flip2_2));
endmodule

(* ORIG_REF_NAME = "countUD3L" *) 
module countUD3L_1
   (flip2_0,
    flip1_0,
    flip0_0,
    flip1_1,
    flip2_1,
    ce,
    clk,
    flip2_2,
    flip1_2,
    Up0__0,
    flip2_3,
    Dw03_out,
    btnL_IBUF,
    flip0_1,
    led_OBUF,
    dp_OBUF_inst_i_1,
    dp_OBUF_inst_i_1_0,
    qOut);
  output flip2_0;
  output flip1_0;
  output flip0_0;
  output flip1_1;
  output flip2_1;
  input ce;
  input clk;
  input flip2_2;
  input flip1_2;
  input Up0__0;
  input flip2_3;
  input Dw03_out;
  input btnL_IBUF;
  input flip0_1;
  input [2:0]led_OBUF;
  input dp_OBUF_inst_i_1;
  input dp_OBUF_inst_i_1_0;
  input [0:0]qOut;

  wire Dw03_out;
  wire Up0__0;
  wire btnL_IBUF;
  wire ce;
  wire clk;
  wire dp_OBUF_inst_i_1;
  wire dp_OBUF_inst_i_1_0;
  wire flip0_0;
  wire flip0_1;
  wire flip1_0;
  wire flip1_1;
  wire flip1_2;
  wire flip1_i_3__0_n_0;
  wire flip2_0;
  wire flip2_1;
  wire flip2_2;
  wire flip2_3;
  wire flip2_i_5__0_n_0;
  wire flip2_i_7_n_0;
  wire flip2_i_8_n_0;
  wire flip2_i_9_n_0;
  wire [2:0]led_OBUF;
  wire out_0;
  wire out_1;
  wire out_2;
  wire [0:0]qOut;

  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_2
       (.I0(dp_OBUF_inst_i_1),
        .I1(dp_OBUF_inst_i_1_0),
        .I2(flip1_0),
        .I3(flip0_0),
        .I4(flip2_0),
        .I5(qOut),
        .O(flip1_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip0
       (.C(clk),
        .CE(ce),
        .D(out_0),
        .Q(flip0_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF606060)) 
    flip0_i_1__0
       (.I0(flip0_0),
        .I1(ce),
        .I2(flip0_1),
        .I3(btnL_IBUF),
        .I4(led_OBUF[0]),
        .O(out_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip1
       (.C(clk),
        .CE(ce),
        .D(out_1),
        .Q(flip1_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCB47800)) 
    flip1_i_1
       (.I0(flip0_0),
        .I1(ce),
        .I2(flip1_0),
        .I3(flip2_2),
        .I4(flip1_2),
        .I5(flip1_i_3__0_n_0),
        .O(out_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    flip1_i_3__0
       (.I0(led_OBUF[1]),
        .I1(btnL_IBUF),
        .O(flip1_i_3__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip2
       (.C(clk),
        .CE(ce),
        .D(out_2),
        .Q(flip2_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAEEAAA)) 
    flip2_i_2
       (.I0(flip2_i_5__0_n_0),
        .I1(flip2_2),
        .I2(flip2_0),
        .I3(flip2_i_7_n_0),
        .I4(ce),
        .I5(flip2_i_8_n_0),
        .O(out_2));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    flip2_i_5__0
       (.I0(led_OBUF[2]),
        .I1(btnL_IBUF),
        .O(flip2_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    flip2_i_6__0
       (.I0(qOut),
        .I1(flip2_0),
        .I2(flip0_0),
        .I3(flip1_0),
        .O(flip2_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    flip2_i_7
       (.I0(flip1_0),
        .I1(flip0_0),
        .O(flip2_i_7_n_0));
  LUT6 #(
    .INIT(64'h0010000000000010)) 
    flip2_i_8
       (.I0(Up0__0),
        .I1(flip2_3),
        .I2(Dw03_out),
        .I3(btnL_IBUF),
        .I4(flip2_0),
        .I5(flip2_i_9_n_0),
        .O(flip2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    flip2_i_9
       (.I0(flip1_0),
        .I1(flip0_0),
        .O(flip2_i_9_n_0));
endmodule

module countUD5L
   (flip4_0,
    flip3_0,
    flip2_0,
    flip1_0,
    flip0_0,
    flip2_1,
    Up0__0,
    ce,
    flip1_1,
    up_in,
    flip2_2,
    ce_0,
    clk,
    out_0,
    Dw03_out,
    p_4_in,
    btnL_IBUF,
    led_OBUF,
    flip2_3,
    flip3_1,
    flip0_1,
    flip0_2,
    flip0_3,
    btnC_IBUF,
    flip0_4,
    flip0_5);
  output flip4_0;
  output flip3_0;
  output flip2_0;
  output flip1_0;
  output flip0_0;
  output flip2_1;
  output Up0__0;
  output ce;
  output flip1_1;
  output up_in;
  output flip2_2;
  input ce_0;
  input clk;
  input out_0;
  input Dw03_out;
  input p_4_in;
  input btnL_IBUF;
  input [3:0]led_OBUF;
  input flip2_3;
  input flip3_1;
  input flip0_1;
  input flip0_2;
  input flip0_3;
  input btnC_IBUF;
  input flip0_4;
  input flip0_5;

  wire Dw03_out;
  wire Up0__0;
  wire btnC_IBUF;
  wire btnL_IBUF;
  wire ce;
  wire ce_0;
  wire clk;
  wire flip0_0;
  wire flip0_1;
  wire flip0_2;
  wire flip0_3;
  wire flip0_4;
  wire flip0_5;
  wire flip1_0;
  wire flip1_1;
  wire flip2_0;
  wire flip2_1;
  wire flip2_2;
  wire flip2_3;
  wire flip2_i_2__2_n_0;
  wire flip3_0;
  wire flip3_1;
  wire flip3_i_2_n_0;
  wire flip3_i_3__0_n_0;
  wire flip3_i_4__0_n_0;
  wire flip4_0;
  wire flip4_i_3__0_n_0;
  wire flip4_i_7__0_n_0;
  wire flip4_i_8__0_n_0;
  wire flip4_i_9__0_n_0;
  wire [3:0]led_OBUF;
  wire out_0;
  wire out_1;
  wire out_2;
  wire out_3;
  wire out_4;
  wire p_4_in;
  wire up40__2;
  wire up_in;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(flip1_0),
        .I1(flip0_0),
        .I2(flip3_0),
        .I3(flip2_0),
        .I4(flip4_0),
        .O(flip1_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip0
       (.C(clk),
        .CE(ce_0),
        .D(out_0),
        .Q(flip0_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip1
       (.C(clk),
        .CE(ce_0),
        .D(out_1),
        .Q(flip1_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF069000000690)) 
    flip1_i_1__1
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(Dw03_out),
        .I3(p_4_in),
        .I4(btnL_IBUF),
        .I5(led_OBUF[0]),
        .O(out_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip2
       (.C(clk),
        .CE(ce_0),
        .D(out_2),
        .Q(flip2_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEEEEAEAAAAAAEA)) 
    flip2_i_1
       (.I0(flip2_i_2__2_n_0),
        .I1(flip2_3),
        .I2(ce_0),
        .I3(flip0_0),
        .I4(flip1_0),
        .I5(flip2_0),
        .O(out_2));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF9A)) 
    flip2_i_1__1
       (.I0(Up0__0),
        .I1(flip0_1),
        .I2(Dw03_out),
        .I3(btnL_IBUF),
        .O(ce));
  LUT6 #(
    .INIT(64'hFFFF009000000090)) 
    flip2_i_2__2
       (.I0(flip2_0),
        .I1(flip4_i_8__0_n_0),
        .I2(p_4_in),
        .I3(Dw03_out),
        .I4(btnL_IBUF),
        .I5(led_OBUF[1]),
        .O(flip2_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0000000044444000)) 
    flip2_i_3
       (.I0(flip1_1),
        .I1(flip0_2),
        .I2(flip0_3),
        .I3(btnC_IBUF),
        .I4(flip0_4),
        .I5(flip0_5),
        .O(Up0__0));
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    flip2_i_3__0
       (.I0(flip0_4),
        .I1(btnC_IBUF),
        .I2(flip1_1),
        .I3(flip0_5),
        .I4(flip0_3),
        .O(up_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    flip2_i_6
       (.I0(Up0__0),
        .I1(flip0_1),
        .I2(Dw03_out),
        .I3(btnL_IBUF),
        .O(flip2_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip3
       (.C(clk),
        .CE(ce_0),
        .D(out_3),
        .Q(flip3_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEABABAEAEAFFBA)) 
    flip3_i_1
       (.I0(flip3_i_2_n_0),
        .I1(flip3_i_3__0_n_0),
        .I2(flip3_1),
        .I3(flip2_3),
        .I4(flip3_0),
        .I5(flip3_i_4__0_n_0),
        .O(out_3));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    flip3_i_2
       (.I0(led_OBUF[2]),
        .I1(btnL_IBUF),
        .O(flip3_i_2_n_0));
  LUT6 #(
    .INIT(64'h7F77777FFFFFFFFF)) 
    flip3_i_3__0
       (.I0(flip1_0),
        .I1(flip0_0),
        .I2(btnL_IBUF),
        .I3(p_4_in),
        .I4(Dw03_out),
        .I5(flip2_0),
        .O(flip3_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFF)) 
    flip3_i_4__0
       (.I0(flip2_0),
        .I1(flip1_0),
        .I2(flip0_0),
        .I3(btnL_IBUF),
        .I4(p_4_in),
        .I5(Dw03_out),
        .O(flip3_i_4__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip4
       (.C(clk),
        .CE(ce_0),
        .D(out_4),
        .Q(flip4_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    flip4_i_10
       (.I0(flip2_0),
        .I1(flip3_0),
        .I2(flip4_0),
        .I3(flip0_0),
        .I4(flip1_0),
        .O(flip2_2));
  LUT6 #(
    .INIT(64'hFFEABAEABAFFBAEA)) 
    flip4_i_2
       (.I0(flip4_i_3__0_n_0),
        .I1(up40__2),
        .I2(flip3_1),
        .I3(flip4_0),
        .I4(flip2_3),
        .I5(flip4_i_7__0_n_0),
        .O(out_4));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    flip4_i_3__0
       (.I0(led_OBUF[3]),
        .I1(btnL_IBUF),
        .O(flip4_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00F6000000000000)) 
    flip4_i_4
       (.I0(Dw03_out),
        .I1(p_4_in),
        .I2(btnL_IBUF),
        .I3(flip4_i_8__0_n_0),
        .I4(flip3_0),
        .I5(flip2_0),
        .O(up40__2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF09)) 
    flip4_i_7__0
       (.I0(Dw03_out),
        .I1(p_4_in),
        .I2(btnL_IBUF),
        .I3(flip4_i_9__0_n_0),
        .I4(flip2_0),
        .I5(flip3_0),
        .O(flip4_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    flip4_i_8__0
       (.I0(flip1_0),
        .I1(flip0_0),
        .O(flip4_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    flip4_i_9__0
       (.I0(flip1_0),
        .I1(flip0_0),
        .O(flip4_i_9__0_n_0));
endmodule

(* ORIG_REF_NAME = "countUD5L" *) 
module countUD5L_2
   (flip4_0,
    flip3_0,
    flip2_0,
    flip1_0,
    flip0_0,
    Dw02_out,
    flip2_1,
    flip2_2,
    flip0_1,
    dtcOut,
    clk,
    out_0,
    btnL_IBUF,
    led_OBUF,
    Dw03_out,
    Up0__0,
    flip4_1,
    btnC_IBUF,
    flip4_2,
    flip4_3,
    flip4_4,
    edge_dw,
    flip1_1,
    flip1_2,
    flip0_2,
    flip0_3,
    qOut);
  output flip4_0;
  output flip3_0;
  output flip2_0;
  output flip1_0;
  output flip0_0;
  output Dw02_out;
  output flip2_1;
  output flip2_2;
  output flip0_1;
  output dtcOut;
  input clk;
  input out_0;
  input btnL_IBUF;
  input [3:0]led_OBUF;
  input Dw03_out;
  input Up0__0;
  input flip4_1;
  input btnC_IBUF;
  input flip4_2;
  input flip4_3;
  input flip4_4;
  input edge_dw;
  input flip1_1;
  input flip1_2;
  input flip0_2;
  input flip0_3;
  input [2:0]qOut;

  wire Dw02_out;
  wire Dw03_out;
  wire Up0__0;
  wire btnC_IBUF;
  wire btnL_IBUF;
  wire ce;
  wire clk;
  wire dp_OBUF_inst_i_7_n_0;
  wire dtcOut;
  wire edge_dw;
  wire flip0_0;
  wire flip0_1;
  wire flip0_2;
  wire flip0_3;
  wire flip1_0;
  wire flip1_1;
  wire flip1_2;
  wire flip2_0;
  wire flip2_1;
  wire flip2_2;
  wire flip2_i_2__1_n_0;
  wire flip3_0;
  wire flip3_i_2__0_n_0;
  wire flip3_i_3_n_0;
  wire flip3_i_4_n_0;
  wire flip4_0;
  wire flip4_1;
  wire flip4_2;
  wire flip4_3;
  wire flip4_4;
  wire flip4_i_11_n_0;
  wire flip4_i_12_n_0;
  wire flip4_i_13_n_0;
  wire flip4_i_5_n_0;
  wire flip4_i_7_n_0;
  wire flip4_i_8_n_0;
  wire flip4_i_9_n_0;
  wire [3:0]led_OBUF;
  wire out_0;
  wire out_1;
  wire out_2;
  wire out_3;
  wire out_4;
  wire p_5_in;
  wire [2:0]qOut;
  wire up40__2;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    dp_OBUF_inst_i_3
       (.I0(flip1_2),
        .I1(flip3_0),
        .I2(flip2_0),
        .I3(flip0_2),
        .I4(flip0_3),
        .I5(dp_OBUF_inst_i_7_n_0),
        .O(dtcOut));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(flip2_0),
        .I3(flip3_0),
        .I4(flip4_0),
        .O(flip0_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    dp_OBUF_inst_i_7
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(flip4_0),
        .I3(qOut[1]),
        .I4(qOut[0]),
        .I5(qOut[2]),
        .O(dp_OBUF_inst_i_7_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip0
       (.C(clk),
        .CE(ce),
        .D(out_0),
        .Q(flip0_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip1
       (.C(clk),
        .CE(ce),
        .D(out_1),
        .Q(flip1_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F6F9F000060900)) 
    flip1_i_1__2
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(btnL_IBUF),
        .I3(Dw02_out),
        .I4(p_5_in),
        .I5(led_OBUF[0]),
        .O(out_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    flip1_i_2
       (.I0(flip2_2),
        .I1(Dw03_out),
        .I2(btnL_IBUF),
        .I3(Up0__0),
        .O(flip2_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip2
       (.C(clk),
        .CE(ce),
        .D(out_2),
        .Q(flip2_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEAEAAEEAEAEAEA)) 
    flip2_i_1__0
       (.I0(flip2_i_2__1_n_0),
        .I1(flip4_i_8_n_0),
        .I2(flip2_0),
        .I3(flip1_0),
        .I4(flip0_0),
        .I5(ce),
        .O(out_2));
  LUT6 #(
    .INIT(64'hFFFF009000000090)) 
    flip2_i_2__1
       (.I0(flip2_0),
        .I1(flip4_i_12_n_0),
        .I2(p_5_in),
        .I3(Dw02_out),
        .I4(btnL_IBUF),
        .I5(led_OBUF[1]),
        .O(flip2_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    flip2_i_4__0
       (.I0(dp_OBUF_inst_i_7_n_0),
        .I1(flip0_3),
        .I2(flip0_2),
        .I3(flip2_0),
        .I4(flip3_0),
        .O(flip2_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip3
       (.C(clk),
        .CE(ce),
        .D(out_3),
        .Q(flip3_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEABABAEAEAFFBA)) 
    flip3_i_1__0
       (.I0(flip3_i_2__0_n_0),
        .I1(flip3_i_3_n_0),
        .I2(flip4_i_7_n_0),
        .I3(flip4_i_8_n_0),
        .I4(flip3_0),
        .I5(flip3_i_4_n_0),
        .O(out_3));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    flip3_i_2__0
       (.I0(led_OBUF[2]),
        .I1(btnL_IBUF),
        .O(flip3_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7777F77FFFFFFFFF)) 
    flip3_i_3
       (.I0(flip0_0),
        .I1(flip1_0),
        .I2(p_5_in),
        .I3(Dw02_out),
        .I4(btnL_IBUF),
        .I5(flip2_0),
        .O(flip3_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF09)) 
    flip3_i_4
       (.I0(p_5_in),
        .I1(Dw02_out),
        .I2(btnL_IBUF),
        .I3(flip0_0),
        .I4(flip1_0),
        .I5(flip2_0),
        .O(flip3_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    flip4
       (.C(clk),
        .CE(ce),
        .D(out_4),
        .Q(flip4_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF6)) 
    flip4_i_1
       (.I0(p_5_in),
        .I1(Dw02_out),
        .I2(btnL_IBUF),
        .O(ce));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    flip4_i_11
       (.I0(flip3_0),
        .I1(flip2_0),
        .I2(flip0_2),
        .I3(flip0_3),
        .O(flip4_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    flip4_i_12
       (.I0(flip0_0),
        .I1(flip1_0),
        .O(flip4_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    flip4_i_13
       (.I0(flip0_0),
        .I1(flip1_0),
        .O(flip4_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFEABAEABAFFBAEA)) 
    flip4_i_2__0
       (.I0(flip4_i_5_n_0),
        .I1(up40__2),
        .I2(flip4_i_7_n_0),
        .I3(flip4_0),
        .I4(flip4_i_8_n_0),
        .I5(flip4_i_9_n_0),
        .O(out_4));
  LUT6 #(
    .INIT(64'h00000000EEEA0000)) 
    flip4_i_3
       (.I0(flip4_1),
        .I1(btnC_IBUF),
        .I2(flip0_1),
        .I3(flip4_2),
        .I4(flip4_3),
        .I5(flip4_4),
        .O(p_5_in));
  LUT5 #(
    .INIT(32'h00080000)) 
    flip4_i_4__0
       (.I0(edge_dw),
        .I1(flip1_1),
        .I2(dp_OBUF_inst_i_7_n_0),
        .I3(flip4_i_11_n_0),
        .I4(flip1_2),
        .O(Dw02_out));
  LUT2 #(
    .INIT(4'h8)) 
    flip4_i_5
       (.I0(led_OBUF[3]),
        .I1(btnL_IBUF),
        .O(flip4_i_5_n_0));
  LUT6 #(
    .INIT(64'h00BE000000000000)) 
    flip4_i_6
       (.I0(btnL_IBUF),
        .I1(Dw02_out),
        .I2(p_5_in),
        .I3(flip4_i_12_n_0),
        .I4(flip2_0),
        .I5(flip3_0),
        .O(up40__2));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    flip4_i_7
       (.I0(Dw02_out),
        .I1(p_5_in),
        .I2(btnL_IBUF),
        .O(flip4_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    flip4_i_8
       (.I0(p_5_in),
        .I1(Dw02_out),
        .I2(btnL_IBUF),
        .O(flip4_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEF)) 
    flip4_i_9
       (.I0(flip2_0),
        .I1(flip4_i_13_n_0),
        .I2(btnL_IBUF),
        .I3(Dw02_out),
        .I4(p_5_in),
        .I5(flip3_0),
        .O(flip4_i_9_n_0));
endmodule

module edgeDetector
   (q0,
    q1,
    ce,
    edge2_0,
    edge_dw,
    btnD_IBUF,
    clk_out,
    up_in,
    btnL_IBUF);
  output q0;
  output q1;
  output ce;
  output edge2_0;
  output edge_dw;
  input btnD_IBUF;
  input clk_out;
  input up_in;
  input btnL_IBUF;

  wire btnD_IBUF;
  wire btnL_IBUF;
  wire ce;
  wire clk_out;
  wire edge2_0;
  wire edge_dw;
  wire q0;
  wire q1;
  wire up_in;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    edge1
       (.C(clk_out),
        .CE(1'b1),
        .D(btnD_IBUF),
        .Q(q0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    edge2
       (.C(clk_out),
        .CE(1'b1),
        .D(q0),
        .Q(q1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB04)) 
    flip0_i_2__2
       (.I0(q1),
        .I1(btnD_IBUF),
        .I2(q0),
        .I3(up_in),
        .O(edge2_0));
  LUT3 #(
    .INIT(8'h04)) 
    flip1_i_2__1
       (.I0(q0),
        .I1(btnD_IBUF),
        .I2(q1),
        .O(edge_dw));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFAA9A)) 
    flip2_i_1__2
       (.I0(up_in),
        .I1(q0),
        .I2(btnD_IBUF),
        .I3(q1),
        .I4(btnL_IBUF),
        .O(ce));
endmodule

(* ORIG_REF_NAME = "edgeDetector" *) 
module edgeDetector_0
   (edge1_0,
    btnU_IBUF,
    clk);
  output edge1_0;
  input btnU_IBUF;
  input clk;

  wire btnU_IBUF;
  wire clk;
  wire edge1_0;
  wire q0;
  wire q1;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    edge1
       (.C(clk),
        .CE(1'b1),
        .D(btnU_IBUF),
        .Q(q0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    edge2
       (.C(clk),
        .CE(1'b1),
        .D(q0),
        .Q(q1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    flip2_i_5
       (.I0(q0),
        .I1(btnU_IBUF),
        .I2(q1),
        .O(edge1_0));
endmodule

module lab4_clks
   (clk,
    digsel,
    clkin,
    greset);
  output clk;
  output digsel;
  input clkin;
  input greset;

  wire clk;
  wire clkin;
  wire digsel;
  wire greset;
  wire my_clk_inst_n_0;
  wire NLW_STARTUPE2_inst_CFGCLK_UNCONNECTED;
  wire NLW_STARTUPE2_inst_CFGMCLK_UNCONNECTED;
  wire NLW_STARTUPE2_inst_EOS_UNCONNECTED;
  wire NLW_STARTUPE2_inst_PREQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE2_inst
       (.CFGCLK(NLW_STARTUPE2_inst_CFGCLK_UNCONNECTED),
        .CFGMCLK(NLW_STARTUPE2_inst_CFGMCLK_UNCONNECTED),
        .CLK(1'b0),
        .EOS(NLW_STARTUPE2_inst_EOS_UNCONNECTED),
        .GSR(greset),
        .GTS(1'b0),
        .KEYCLEARB(1'b1),
        .PACK(1'b0),
        .PREQ(NLW_STARTUPE2_inst_PREQ_UNCONNECTED),
        .USRCCLKO(1'b0),
        .USRCCLKTS(1'b1),
        .USRDONEO(1'b0),
        .USRDONETS(1'b1));
  clk_wiz_0 my_clk_inst
       (.clk_out1(my_clk_inst_n_0),
        .clkin(clkin),
        .greset(greset));
  clkcntrl4 slowclk
       (.clk_out(clk),
        .digsel(digsel),
        .fastclk(my_clk_inst_n_0));
endmodule

module ringCounter
   (seg_OBUF,
    out,
    an_OBUF,
    qOut,
    digsel,
    clk);
  output [6:0]seg_OBUF;
  output [1:0]out;
  output [3:0]an_OBUF;
  input [15:0]qOut;
  input digsel;
  input clk;

  wire [3:0]an_OBUF;
  wire clk;
  wire digsel;
  wire [1:0]out;
  wire [15:0]qOut;
  wire [2:1]ringOut;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [3:0]sevenSegIn;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(out[0]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(ringOut[1]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(ringOut[2]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(out[1]),
        .O(an_OBUF[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ring1
       (.C(clk),
        .CE(digsel),
        .D(out[1]),
        .Q(out[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ring2
       (.C(clk),
        .CE(digsel),
        .D(out[0]),
        .Q(ringOut[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ring3
       (.C(clk),
        .CE(digsel),
        .D(ringOut[1]),
        .Q(ringOut[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ring4
       (.C(clk),
        .CE(digsel),
        .D(ringOut[2]),
        .Q(out[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4814)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(sevenSegIn[1]),
        .I1(sevenSegIn[0]),
        .I2(sevenSegIn[2]),
        .I3(sevenSegIn[3]),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCA28)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(sevenSegIn[2]),
        .I1(sevenSegIn[3]),
        .I2(sevenSegIn[0]),
        .I3(sevenSegIn[1]),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB002)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(sevenSegIn[1]),
        .I1(sevenSegIn[0]),
        .I2(sevenSegIn[2]),
        .I3(sevenSegIn[3]),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8692)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(sevenSegIn[0]),
        .I1(sevenSegIn[1]),
        .I2(sevenSegIn[2]),
        .I3(sevenSegIn[3]),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5704)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(sevenSegIn[3]),
        .I1(sevenSegIn[2]),
        .I2(sevenSegIn[1]),
        .I3(sevenSegIn[0]),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4584)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(sevenSegIn[3]),
        .I1(sevenSegIn[0]),
        .I2(sevenSegIn[2]),
        .I3(sevenSegIn[1]),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(sevenSegIn[3]),
        .I1(sevenSegIn[0]),
        .I2(sevenSegIn[2]),
        .I3(sevenSegIn[1]),
        .O(seg_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(qOut[7]),
        .I1(ringOut[1]),
        .I2(qOut[11]),
        .I3(ringOut[2]),
        .I4(\seg_OBUF[6]_inst_i_6_n_0 ),
        .O(sevenSegIn[3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(qOut[4]),
        .I1(ringOut[1]),
        .I2(qOut[8]),
        .I3(ringOut[2]),
        .I4(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(sevenSegIn[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(qOut[6]),
        .I1(ringOut[1]),
        .I2(qOut[10]),
        .I3(ringOut[2]),
        .I4(\seg_OBUF[6]_inst_i_8_n_0 ),
        .O(sevenSegIn[2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(qOut[5]),
        .I1(ringOut[1]),
        .I2(qOut[9]),
        .I3(ringOut[2]),
        .I4(\seg_OBUF[6]_inst_i_9_n_0 ),
        .O(sevenSegIn[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(out[0]),
        .I1(qOut[3]),
        .I2(out[1]),
        .I3(qOut[15]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(out[0]),
        .I1(qOut[0]),
        .I2(out[1]),
        .I3(qOut[12]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(out[0]),
        .I1(qOut[2]),
        .I2(out[1]),
        .I3(qOut[14]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(out[0]),
        .I1(qOut[1]),
        .I2(out[1]),
        .I3(qOut[13]),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

(* NotValidForBitStream *)
module toppo
   (clkin,
    btnR,
    btnU,
    btnD,
    btnC,
    btnL,
    sw,
    seg,
    dp,
    an,
    led);
  input clkin;
  input btnR;
  input btnU;
  input btnD;
  input btnC;
  input btnL;
  input [15:0]sw;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  output [15:0]led;

  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  (* IBUF_LOW_PWR *) wire clkin;
  wire \count0to2/ce ;
  wire dig_sel;
  wire down_n_3;
  wire dp;
  wire dp_OBUF;
  wire edge_dw;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire q0;
  wire q1;
  wire [15:0]qOut;
  wire [3:0]ringOut;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire up_in;
  wire up_n_0;

  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  edgeDetector down
       (.btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .ce(\count0to2/ce ),
        .clk_out(clk),
        .edge2_0(down_n_3),
        .edge_dw(edge_dw),
        .q0(q0),
        .q1(q1),
        .up_in(up_in));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  lab4_clks lab4_clock
       (.clk(clk),
        .clkin(clkin),
        .digsel(dig_sel),
        .greset(btnR_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  ringCounter ring
       (.an_OBUF(an_OBUF),
        .clk(clk),
        .digsel(dig_sel),
        .out({ringOut[3],ringOut[0]}),
        .qOut(qOut),
        .seg_OBUF(seg_OBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  countUD16L sixteenBit
       (.btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .ce(\count0to2/ce ),
        .clk(clk),
        .dp_OBUF(dp_OBUF),
        .edge_dw(edge_dw),
        .flip0(down_n_3),
        .flip4(up_n_0),
        .led_OBUF(led_OBUF),
        .out({ringOut[3],ringOut[0]}),
        .q0(q0),
        .q1(q1),
        .qOut(qOut),
        .up_in(up_in));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(led_OBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(led_OBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(led_OBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(led_OBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(led_OBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(led_OBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(led_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(led_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(led_OBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(led_OBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(led_OBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(led_OBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(led_OBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(led_OBUF[9]));
  edgeDetector_0 up
       (.btnU_IBUF(btnU_IBUF),
        .clk(clk),
        .edge1_0(up_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
