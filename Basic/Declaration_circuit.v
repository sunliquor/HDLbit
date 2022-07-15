module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n);  
    wire temp1,temp2,temp3;
    and (temp1,a,b);
    and (temp2,c,d);
    or (temp3,temp1,temp2);
    not (out_n,temp3);
    assign out = temp3;
endmodule