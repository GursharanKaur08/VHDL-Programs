library IEEE;
use IEEE.std_logic_1164.all;

entity Dl is
port(d,e: in bit ;
     q,qbar : out bit);
end Dl;

architecture RTL of Dl is
begin
    process(d,e)
begin
        if(e = '1')then
        q <= d ;
        qbar <= not(d);
        end if;
    end process;
end RTL;