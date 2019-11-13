
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module Jorge(

	 //////////// SW //////////
    input             [17:0]        SW,

    //////////// SEG7 //////////
    output             [6:0]        HEX0,
    output             [6:0]        HEX1,
    output             [6:0]        HEX2,
    output             [6:0]        HEX3,
    output             [6:0]        HEX4,
    output             [6:0]        HEX5,
    output             [6:0]        HEX6,
    output             [6:0]        HEX7,

	//////////// CLOCK //////////
	input 		          		CLOCK_50,
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,

	//////////// LED //////////
	output		     [8:0]		LEDG,
	output		    [17:0]		LEDR,

);



//=======================================================
//  REG/WIRE declarations
//=======================================================
assign LEDR[0] = SW[0];
assign LEDR[1] = SW[1];
assign LEDR[17:14] = SW[16:14];

novo instancia(.clk(SW[0]), .reset(SW[1]), .ok(SW[2]), .nota(SW[17:14]), .fim(SW[3]), .tipo(LEDG[6:5]));
Alfa_desc sim_instancia(.saida1(HEX0[0]), .saida2(HEX0[1]), .saida3(HEX0[2]), .saida4(HEX0[3]), .saida5(HEX0[4]), .saida6(HEX0[5]), .saida7(HEX0[6]));



//=======================================================
//  Structural coding
//=======================================================


endmodule
