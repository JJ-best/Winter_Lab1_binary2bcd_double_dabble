module top_modeule (
    input wire [7:0]in_binary,
    output wire [7:0]packed_bcd,
    output wire [15:0]unpacked_bcd,
    input wire clk,
    input wire rst_n
);
    reg [15:0]scratch_pad;
    always @( *) begin
        scratch_pad = {8'b0000_0000, in_binary};
        for (integer i = 1; i < 8 ; i = i + 1) begin
            scratch_pad= scratch_pad << 1;
            if (scratch_pad[11:8] > 4'b0100) begin
                scratch_pad[11:8] = scratch_pad[11:8] + 4'b0011;
            end 
        end
        scratch_pad = scratch_pad << 1;
    end
    assign packed_bcd = scratch_pad[15:8];
    assign unpacked_bcd = {4'b0000, scratch_pad[15:12], 4'b0000, scratch_pad[11:8]};
endmodule