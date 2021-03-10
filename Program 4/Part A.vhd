library ieee;
use ieee.std_logic_1164.all;
Entity PA1 is
port( A,B: in std_logic_vector(3 downto 0);
Co: out std_logic;
SUM: out std_logic_vector(3 downto 0));
end PA1;
Architecture RTL of PA1 is
component Fa is
port( a,b,c: in std_logic;
sum,ca: out std_logic);
end component;
signal s: std_logic_vector(2 downto 0);
signal temp: std_logic; --define it 0 at simulation
begin
temp<='0';
u0: Fa port map(A(0), B(0), temp, SUM(0), s(0));
u1: Fa port map(A(1), B(1), s(0), SUM(1), s(1));
u2: Fa port map(A(2), B(2), s(1), SUM(2), s(2));
u3: Fa port map(A(3), B(3), s(2), SUM(3), Co);
end RTL;
library ieee;
use ieee.std_logic_1164.all;
Entity fulladder is
port(
a,b,c: in bit;
sum,carry: out bit);
end fulladder;
Architecture data of fulladder is
begin
sum<= a xor b xor c;
carry<= ((a and b) or (b and c) or (a and c));
end data;