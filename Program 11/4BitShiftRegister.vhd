library ieee;

use ieee.std_logic_1164.all;

entity shiftreg is
port(rst,clk,din: in std_logic;
     q: out std_logic_vector(3 downto 0));
end shiftreg;

architecture rtl of shiftreg is
component dff is
port(d: in std_logic;
     rst: in std_logic;
     clk:in std_logic;
     q: out std_logic;
     qbar: out std_logic);
end component;

signal qt: std_logic_vector(3 downto 0);
begin
    g1: for j in 0 to 3 generate
    d0: if j=0 generate
    u0: dff port map(din,rst,clk,qt(j),open);
    end generate d0;
d1:if j>0 generate
u1: dff port map(qt(j-1),rst,clk,qt(j),open);
end generate d1;
end generate g1;
q<=qt;
end rtl;
library ieee;
use ieee.std_logic_1164.all;
entity dff is
port(d,rst,clk: in std_logic;
q,qbar: out std_logic);
end dff;
architecture rtl of dff is
begin
process(clk)
begin
if(rising_edge(clk))then
if(rst='1')then
q<='0';
qbar<='1';
else
q<=d;
qbar<= (not d);
end if;
end if;
end process;
end rtl;