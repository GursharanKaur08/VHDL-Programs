library IEEE;
use IEEE.std_logic_1164.all;

entity dffasynch is
Port( D,clk,reset: in std_logic;
      q : out std_logic);
end dffasynch;

architecture RTL of dffasynch is
begin
    process(clk,reset)
begin
    if( reset = '1') then
        q <= '0';
    elsif rising_edge(clk) then
        q <= D;
    end if;
    end process;
end RTL;