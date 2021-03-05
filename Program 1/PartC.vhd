Library ieee;
use ieee.std_logic_1164.all;

Entity fa1 is
Port (a, b, c : in bit;
    Sum, Carry : out bit);
end fa1;

Architecture RTL of fa1 is
begin
    Sum <= a XOR b XOR c;
    Carry <= (a AND b) OR ((a XOR B) AND c);
end RTL;