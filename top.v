module top (
    input  wire clk_src,
    input  wire clk_dest,
    input  wire async_in,
    output wire sync_out
);
    cdc_sync u1 (
        .clk_dest(clk_dest),
        .async_in(async_in),
        .sync_out(sync_out)
    );
endmodule
