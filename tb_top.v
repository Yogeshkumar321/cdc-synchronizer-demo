`timescale 1ns/1ps
module tb_top;
    reg clk_src, clk_dest, async_in;
    wire sync_out;

    top uut (.clk_src(clk_src), .clk_dest(clk_dest), .async_in(async_in), .sync_out(sync_out));

    initial begin
        clk_src = 0; clk_dest = 0; async_in = 0;
        forever #5 clk_src = ~clk_src;
    end

    initial begin
        forever #7 clk_dest = ~clk_dest;
    end

    initial begin
        #10 async_in = 1;
        #20 async_in = 0;
        #15 async_in = 1;
        #50 async_in = 0;
        #100 $stop;
    end
endmodule
