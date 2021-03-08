library ieee;
use ieee.std_logic_1164.all;

Entity mux2x1_dmconditional is
port( A,B,S: IN BIT;
      Y: OUT BIT);
end mux2x1_dmconditional;

Architecture RTL of mux2x1_dmconditional is
begin
with s select
    y<= A when '0',
    B when '1';
end RTL;