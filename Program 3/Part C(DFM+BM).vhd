library ieee; use ieee.std_logic_1164.all;

Entity fadm_and_sm is
Port(A,B,CIN: IN STD_LOGIC;
     SUM,COUT: OUT STD_LOGIC);
end fadm_and_sm;

Architecture RTL of fadm_and_sm is
component XOR1 is
Port(a,b: in std_logic;
     y: out std_logic);
end component;

signal s1: std_logic;
begin
    U1: XOR1 PORT MAP(A,B,s1);
    U2: XOR1 PORT MAP(S1, CIN,SUM);
    COUT <= (A AND B) OR (A AND CIN) OR (A AND CIN);
end RTL;

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