library ieee;
use ieee.std_logic_1164.all;

entity count4bit is
port(rst,clk: in std_logic;
     q:out std_logic_vector(3 downto 0));
end count4bit;

architecture rtl of count4bit is
signal qt:std_logic_vector(3 downto 0);

component tff is
port(rst:in std_logic;
     clk:in std_logic;
     t: in std_logic;
     q: out std_logic);
end component;

begin
    g1: for j in 0 to 3 generate
    g1: if j=0 generate
    dff0:tff port map(rst,clk,'1',qt(j));
end generate d0;

d1: if j>0 generate
dffj: tff port map(rst,qt(j-1),'1',qt(j));
end generate d1;
end generate g1;

q<=qt;
end rtl;
