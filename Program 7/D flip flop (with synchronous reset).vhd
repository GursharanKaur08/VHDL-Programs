library IEEE;
use IEEE.std_logic_1164.all;

entity dffsynch is
Port( D,clk,reset: in std_logic;
      q : out std_logic);
end dffsynch;

architecture RTL of dffsynch is
begin
    process(clk)
begin
    if rising_edge(clk) then
    if( reset = '1') then
        q <= '0';
    else
        q <= D;
    end if;
    end if;
    end process;
end RTL;
