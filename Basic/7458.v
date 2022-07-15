module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire w1,w2,w3,w4;
    and upperleft(w1,p2a,p2b);
    and subleft(w2,p2c,p2d);
    and upperright(w3,p1a,p1b,p1c);
    and subright(w4,p1f,p1e,p1d);
    or left(p2y,w1,w2);
    or right(p1y,w3,w4);
endmodule
