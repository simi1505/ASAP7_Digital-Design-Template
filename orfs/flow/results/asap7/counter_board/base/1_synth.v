/* Generated by Yosys 0.48 (git sha1 aaa534749, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:34.1-53.10" *)
(* top =  1  *)
(* hdlname = "counter_board" *)
module counter_board(clock_i, reset_n_i, enable_i, counter_value_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/platforms/asap7/yoSys/cells_adders_R.v:10.22-10.24" *)
  wire _04_;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/platforms/asap7/yoSys/cells_adders_R.v:10.26-10.28" *)
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:35.11-35.18" *)
  input clock_i;
  wire clock_i;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:38.17-38.32" *)
  output [3:0] counter_value_o;
  wire [3:0] counter_value_o;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:37.11-37.19" *)
  input enable_i;
  wire enable_i;
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:36.11-36.20" *)
  input reset_n_i;
  wire reset_n_i;
  INVx1_ASAP7_75t_R _19_ (
    .A(_00_),
    .Y(counter_value_o[3])
  );
  INVx2_ASAP7_75t_R _20_ (
    .A(_01_),
    .Y(counter_value_o[2])
  );
  INVx1_ASAP7_75t_R _21_ (
    .A(_02_),
    .Y(counter_value_o[1])
  );
  INVx1_ASAP7_75t_R _22_ (
    .A(_03_),
    .Y(counter_value_o[0])
  );
  INVx2_ASAP7_75t_R _23_ (
    .A(enable_i),
    .Y(_10_)
  );
  OR3x1_ASAP7_75t_R _24_ (
    .A(_00_),
    .B(_01_),
    .C(_04_),
    .Y(_11_)
  );
  AND3x1_ASAP7_75t_R _25_ (
    .A(_03_),
    .B(enable_i),
    .C(_11_),
    .Y(_12_)
  );
  AO21x2_ASAP7_75t_R _26_ (
    .A1(counter_value_o[0]),
    .A2(_10_),
    .B(_12_),
    .Y(_06_)
  );
  NAND2x1_ASAP7_75t_R _27_ (
    .A(enable_i),
    .B(_05_),
    .Y(_13_)
  );
  OA21x2_ASAP7_75t_R _28_ (
    .A1(counter_value_o[1]),
    .A2(enable_i),
    .B(_13_),
    .Y(_07_)
  );
  NOR2x1_ASAP7_75t_R _29_ (
    .A(_10_),
    .B(_04_),
    .Y(_14_)
  );
  XNOR2x2_ASAP7_75t_R _30_ (
    .A(_01_),
    .B(_14_),
    .Y(_08_)
  );
  OR4x1_ASAP7_75t_R _31_ (
    .A(_01_),
    .B(_02_),
    .C(_03_),
    .D(_10_),
    .Y(_15_)
  );
  OAI21x1_ASAP7_75t_R _32_ (
    .A1(_02_),
    .A2(_03_),
    .B(_04_),
    .Y(_16_)
  );
  AND4x1_ASAP7_75t_R _33_ (
    .A(counter_value_o[3]),
    .B(counter_value_o[2]),
    .C(enable_i),
    .D(_16_),
    .Y(_17_)
  );
  AOI21x1_ASAP7_75t_R _34_ (
    .A1(_00_),
    .A2(_15_),
    .B(_17_),
    .Y(_09_)
  );
  (* module_not_derived = 32'b00000000000000000000000000000001 *)
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/platforms/asap7/yoSys/cells_adders_R.v:20.29-24.14" *)
  HAxp5_ASAP7_75t_R _35_ (
    .A(counter_value_o[0]),
    .B(counter_value_o[1]),
    .CON(_04_),
    .SN(_05_)
  );
  TIEHIx1_ASAP7_75t_R _36_ (
    .H(_18_)
  );
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:27.3-31.22" *)
  DFFASRHQNx1_ASAP7_75t_R \counter_0.n20_q[0]$_DFFE_PN0P_  (
    .CLK(clock_i),
    .D(_06_),
    .QN(_03_),
    .RESETN(_18_),
    .SETN(reset_n_i)
  );
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:27.3-31.22" *)
  DFFASRHQNx1_ASAP7_75t_R \counter_0.n20_q[1]$_DFFE_PN0P_  (
    .CLK(clock_i),
    .D(_07_),
    .QN(_02_),
    .RESETN(_18_),
    .SETN(reset_n_i)
  );
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:27.3-31.22" *)
  DFFASRHQNx1_ASAP7_75t_R \counter_0.n20_q[2]$_DFFE_PN0P_  (
    .CLK(clock_i),
    .D(_08_),
    .QN(_01_),
    .RESETN(_18_),
    .SETN(reset_n_i)
  );
  (* src = "/foss/designs/ASAP7_OpenROAD-Template/orfs/flow/../../verilog/rtl/counter_board.v:27.3-31.22" *)
  DFFASRHQNx1_ASAP7_75t_R \counter_0.n20_q[3]$_DFFE_PN0P_  (
    .CLK(clock_i),
    .D(_09_),
    .QN(_00_),
    .RESETN(_18_),
    .SETN(reset_n_i)
  );
endmodule
