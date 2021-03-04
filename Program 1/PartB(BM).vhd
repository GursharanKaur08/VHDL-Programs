Library ieee;
use ieee.std_logic_1164.all;

Entity ha1 is
Port (a,b : in bit;
Sum, Carry : out bit);
end ha1;

Architecture RTL of ha1 is
begin
Process(a,b)
begin
Sum <= a xor b;
Carry <= a and b;
end Process;
end RTL;