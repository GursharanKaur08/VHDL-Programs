Library ieee;
Use ieee.std_logic_1164.all;

Entity JK_ff is
Port (J,K,clk : in std_logic; q, qb : out std_logic );
End JK_ff;

Architecture rtl of jk_ff is
    Begin
Process (clk)
    Variable temp : std_logic;
    begin
If clk'event and clk='1' then
If (J='0' and K='0') then
    temp := temp;
elsif ( J='1' and K='1') then
    temp := not temp;
elsif (J='0' and K='1') then
    temp := '0';
else
    temp := '1';
end if;
end if;
    q<= temp;
    qb<= not temp;
end process;
end rtl;