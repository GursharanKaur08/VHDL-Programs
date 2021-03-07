Library ieee;
use ieee.std_logic_1164.all;

Entity decoder2 is
Port [A, B, En: in bit;
      D: out bit_vector(o to 3)];
end decoder2;

Architecture RTL of decoder1 is
Signal ABAR, BBAR: bit;
begin
    ABAR<=not A;
    BBAR<=not B;
    D(0)<=ABAR and BBAR and En;
    D(1)<=ABAR and B and En;
    D(2)<=A and BBAR and En;
    D(3)<=A and B and En;
End RTL;