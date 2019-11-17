module counter_odd(clk,rst,in,out);
    input wire clk,rst,in;
    output reg out;

    reg[1:0] estados;
    reg[1:0] proximo_estado;
    reg count =0;

    parameter  In  = 2'b00,
                S0 = 2'b01,
                S1 = 2'b10;
                S2 = 2'b11;

    always @(posedge clk or in or rst) begin
       if(rst)begin
           estados = In;
       end
       else begin
           case (estados)                       
               In:begin
                    proximo_estado = S0;          
               end
               S0:begin
                    if (in == 1'b1)begin
                        if(count % 3 == 0)
                            out = 1'b1;
                        else    
                            out = 1'b0;                       
                        count = count + 1'b1;
                        proximo_estado = S1;  
                   end
                   else begin
                        if(count % 3 == 0)
                            out = 1'b1;
                        else
                            out = 1'b0;      
                       proximo_estado = S0;      
                   end
               end
               S1:begin
                   if (in == 1'b1)begin
                        if(count % 3 == 0)
                            out = 1'b1;
                        else
                            out = 1'b0;      
                        count = count + 1'b1;
                        proximo_estado = S2;  
                   end
                   else begin
                        if(count % 3 == 0)
                            out = 1'b1;
                        else
                            out = 1'b0;      
                       proximo_estado = S1;
               end
               S2:begin
                    if(count % 3 == 0)
                            out = 1'b1;
                        else
                            out = 1'b0;      
                        count = count + 1'b1;
                        proximo_estado = In;  
                   end
                   else begin
                        if(count % 3 == 0)
                            out = 1'b1;
                        else
                            out = 1'b0;      
                       proximo_estado = S2; 
               end
           endcase
       end 
    end
endmodule