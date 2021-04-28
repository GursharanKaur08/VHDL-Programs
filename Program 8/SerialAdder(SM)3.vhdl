library ieee;
use ieee.std_logic_1164.all;

entity DFF is
port(D,clk: in std_logic;
     q,qbar: out std_logic);
end DFF;

architecture RTL of DFF is
begin
    G1: block(clk'event and clk='1')
begin
    q<=guarded D;
    qbar<=guarded not D;
end block G1;
end RTL;