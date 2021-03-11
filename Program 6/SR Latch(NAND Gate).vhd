library IEEE;
use IEEE.std_logic_1164.all;

entity srnand is
port(s,r: in std_logic ;
     q: inout std_logic);
end srnand;

architecture RTL of srnand is
signal notq : std_logic;
begin
    q <= s nand notq;
    notq <= r nand q;
end RTL;