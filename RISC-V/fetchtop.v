module top(
        input clk,rst,
        output top_insfetch);

    pc pc1(.clk(clk),
           .rst(rst),
           .en(en),
           .inst_addr(inst_addr));

    im insmem(.en(en),
              .address(inst_addr));
              .inst_out(inst_out));

    fetch pfetch(.clk(clk),
                 .rst(rst),
                 .inst_fetch(inst_out),
                 .inst_fetch_out(inst_fetch_out));
