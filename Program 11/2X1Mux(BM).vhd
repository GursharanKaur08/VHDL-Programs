library ieee;
use ieee.std_logic_1164.all;

Entity mux2x1_bm is
port(A,B,S: IN BIT;
     Y: OUT BIT);
end mux2x1_bm;

Architecture RTL of mux2x1_bm is
begin
    process(A,B,S)
begin
    if S='0' then
    Y<=A;
    else
    Y<=B;
    end if;
    end process;
end RTL;