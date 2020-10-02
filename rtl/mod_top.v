//=======================================================================
//                         Sample Project
//
// File:
//   mod_top.v
//
// Abstract:
//   module top
//
//  Created:
//    15 January 2015
//======================================================================
//
// Copyright (c) 2015, Kenji Ishimaru
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//  -Redistributions of source code must retain the above copyright notice,
//   this list of conditions and the following disclaimer.
//  -Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
// OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
// OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
// EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Revision History
// $Date: 2015-01-18 05:14:01 +0900 (日, 18  1月 2015) $
// $Rev: 5 $

module mod_top (
  input clk,
  input rst_x,
  input [7:0] i_in,
  output [7:0] o_out
);


wire [7:0] w_out_a;

mod_a u_mod_a (
  .clk(clk),
  .rst_x(rst_x),
  .i_in(i_in),
  .o_out(w_out_a)
);

mod_b u_mod_b (
  .clk(clk),
  .rst_x(rst_x),
  .i_in(w_out_a),
  .o_out(o_out)
);


endmodule
