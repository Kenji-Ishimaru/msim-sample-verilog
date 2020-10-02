//=======================================================================
//                         Sample Project
//
// File:
//   test_1.v
//
// Abstract:
//   test scenario 1
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

module test_module;

reg clk;
reg rst_x;

reg [7:0] i_in;
wire [7:0] o_out;

mod_top _mod_top (
  .clk(clk),
  .rst_x(rst_x),
  .i_in(i_in),
  .o_out(o_out)
);

initial begin
  clk = 1;
  forever begin
    #5 clk = ~clk;
  end
end

integer i;
initial begin
  $display("ModelSim simulation sample");
  $dumpvars;
  reset;
  repeat (10) @(posedge clk);
  for (i=0;i<10;i=i+1) begin
    i_in = $random;
    @(posedge clk);
  end
  repeat (10) @(posedge clk);
  $finish;
end

task reset;
  begin
    rst_x = 0;
    repeat (10) @(posedge clk);
    @(negedge clk);
    rst_x = 1;
    @(posedge clk);
  end
endtask


endmodule
