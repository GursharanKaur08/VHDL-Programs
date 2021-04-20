library ieee;
use ieee.std_logic_1164.all;
entity tff is
port(rst:in std_logic;
clk:in std_logic;
t: in std_logic;
q: out std_logic);
end tff;
architecture rtl of tff is
begin
process(rst,clk,t) is
variable m: std_logic:='0';
begin
if(rst='1')then
m:='0';
elsif(rising_edge(clk))then
if(t='1')then
m:= not m;
end if;
end if;
q<=m;
end process;
end rtl;