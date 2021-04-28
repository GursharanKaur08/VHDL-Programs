library ieee;
use ieee.std_logic_1164.all;

entity FA is
port(A,B,CIN: in std_logic;
     sum,cout: out std_logic);
end FA;

architecture RTL of FA is
begin
    sum<= A xor B xor CIN;
    cout<= (A and B) or (B and CIN) or (CIN and A);
end RTL;