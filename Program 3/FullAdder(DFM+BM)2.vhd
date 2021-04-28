library ieee;
use ieee.std_logic_1164.all;

Entity fulladder is
Port(a,b,c: in bit;
     sum,carry: out bit);
end fulladder;

Architecture data of fulladder is
begin
    sum<= a xor b xor c;
end data;