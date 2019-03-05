module fetch(
    input clk,rst,
    input [31:0]inst_fetch;
    output reg [31:0]inst_fetch_out);

    always @(posedge clk or posedge rst) begin
        if(rst) begin
        inst_fetch_addr<=0;
    end else begin
        inst_fetch_out<=inst_fetch;
    end
end
endmodule

