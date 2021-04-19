library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity updown is
port(clk,rst,updown:in std_logic;
     count:out std_logic_vector(3 downto 0));
end updown;

architecture RTL of updown is
signal temp : std_logic_vector(3 downto 0):="0000";
begin
    process(clk,rst)
    begin
        if(rst='1') then
            temp<="0000";
        elsif(rising_edge(clk)) then
            if(updown='0') then
            temp<=temp+1;
        else
            temp<=temp-1;
        end if;
        end if;
    end process;
    count<=temp;
end RTL;