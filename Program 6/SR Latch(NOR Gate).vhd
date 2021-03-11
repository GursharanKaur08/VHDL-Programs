library IEEE;
use IEEE.std_logic_1164.all;

entity sr_latch is
port(s,r: in std_logic ;
     q: inout std_logic);
end sr_latch;

architecture RTL of sr_latch is
signal notq : std_logic;
begin
    q <= r nor notq;
    notq <= s nor q;
end RTL;