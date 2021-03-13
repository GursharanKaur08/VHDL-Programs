library ieee;
use ieee.std_logic_1164.all;

entity sr_ff is
port (s,r,clk : in std_logic; q,qb : out std_logic);
end sr_ff;

Architecture rtl of sr_ff is
Begin
    Process (clk)
Variable temp: std_logic;
    Begin
    if clk'event and clk='1' then
    if( s='0' and r='0') then
        temp := temp;
    elsif (s='1' and r='1') then
        temp := 'Z';
    elsif (s='0' and r='1') then
        temp := '0';
    else
        temp :='1';
    end if;
    end if;
        q<=temp;
        qb<= not temp;
    end process;
end rtl;