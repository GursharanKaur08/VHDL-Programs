library ieee;
use ieee.std_logic_1164.all;

entity SADD is
port(a,b: in std_logic;
     clk:in std_logic;
     sum:out std_logic;
     cout: out std_logic);
end SADD;

architecture RTL of SADD is
component DFF
port(D: in std_logic;
     clk:in std_logic;
     Q: out std_logic);
end component;

component FA
port(A:in std_logic;
     B: in std_logic;
     CIN: in std_logic;
     sum: out std_logic;
     cout: out std_logic);
end component;

signal c1,c2: std_logic;
begin
    u0: FA port map(a,b,c1,sum,c2);
    u1: DFF port map(c2,clk,c1);
    cout<=c2;
end RTL;



