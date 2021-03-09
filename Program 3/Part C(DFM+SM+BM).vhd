library ieee;
use ieee.std_logic_1164.all;

Entity fadm_3modelling is
Port(A,B,CIN: IN STD_LOGIC;
     SUM,COUT: OUT STD_LOGIC);
end fadm_3modelling;

Architecture RTL of fadm_3modelling is
component XOR1 is
Port(a,b: in std_logic;
     y: out std_logic);
end component;

signal s1: std_logic;
begin
    U1: XOR1 PORT MAP(A,B,s1); --SM
    SUM<=s1 XOR CIN; --DM
process(A,B,CIN)
VARIABLE T1, T2, T3: std_logic;
begin
    T1:= A AND B;
    T2:= A AND CIN;
    T3:= B AND CIN;
    COUT<= T1 OR T2 OR T3;
end process;
end RTL;

library ieee;
use ieee.std_logic_1164.all;

Entity XOR2 IS
Port(a,b: in std_logic;
     c: out std_logic);
end XOR2;

Architecture RTL of XOR2 is
begin
    c<= a XOR b;
end RTL;
