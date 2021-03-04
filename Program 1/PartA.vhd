LIBRARY ieee;
use ieee.std_logic_1164.all;

Entity logicgates is
Port (a,b : in std_logic;
c : out std_logic_vector(0 to 6));
end logicgates;

Architecture RTL of logicgates is

begin
c(0) <= a and b;
c(1) <= a or b;
c(2) <= not a;
c(3) <= a nand b;
c(4) <= a nor b;
c(5) <= a xor b;
c(6) <= a xnor b;
end RTL;