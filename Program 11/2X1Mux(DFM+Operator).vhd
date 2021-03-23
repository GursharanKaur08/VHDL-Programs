library ieee;
use ieee.std_logic_1164.all;

Entity mux2x1_dmoperatorbased is
port(A,B,S: IN BIT;
     Y: OUT BIT);
end mux2x1_dmoperatorbased;

Architecture RTL of mux2x1_dmoperatorbased is
begin
    y<= ((not S) and A) or (S and B);
end RTL;