Library ieee;
use ieee.std_logic_1164.all;

Entity BCD_Segment is
Port [bcd : in bit_vector(0 to 3);
    Led : out bit_vector(0 to 6)];
end BCD_Segment;

Architecture rtl of BCD_Segment is
begin
led<=”1111110” when bcd = “0000” else
    ”0110000” when bcd = “0001” else
    ”1101101” when bcd = “0010” else
    ”1111001” when bcd = “0011” else
    ”0110011” when bcd = “0100” else
    ”1011011” when bcd = “0101” else
    ”1011111” when bcd = “0110” else
    ”1110000” when bcd = “0111” else
    ”1111111” when bcd = “1000” else
    ”1111011” when bcd = “1001” else
    ”0000000” when others;
end rtl;