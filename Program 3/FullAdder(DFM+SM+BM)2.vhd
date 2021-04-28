library ieee;
use ieee.std_logic_1164.all;

Entity XOR2 IS
Port(a,b: in std_logic;
     c: out std_logic);
end XOR2;

Architecture RTL of XOR2 is
begin
    c<= a XOR b;
end RTL;