module cdc_sync (
    input  wire clk_dest,
    input  wire async_in,
    output reg  sync_out
);
    reg sync_ff1;

    always @(posedge clk_dest) begin
        sync_ff1 <= async_in;
        sync_out <= sync_ff1;
    end
endmodule
