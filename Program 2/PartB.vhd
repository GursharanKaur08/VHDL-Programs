Library ieee;
use ieee.std_logic_1164.all;

Entity decoder1 is
Port [A, B, E : in bit;
    D : out bit_vector(0 to 3)];
end decoder1;

Architecture RTL of decoder1 is
begin
    Process (A, B, E)
    Variable ABAR, BBAR: bit;
    
begin
    ABAR=not A;
    BBAR=not B;
    if E=1
    D(0)<=ABAR and BBAR;
    D(1)<=ABAR and B;
    D(2)<=A and BBAR;
    D(3)<=A and B;
    else
    D<=”0000”;
    end if;
    end Process;
end RTL;