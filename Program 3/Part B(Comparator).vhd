library ieee;
use ieee.std_logic_1164.all;

Entity comparator is
Generic(n: natural:=2);
Port( A: in std_logic_vector(n-1 downto 0);
      B: in std_logic_vector(n-1 downto 0);
      less: out std_logic;
      equal: out std_logic;
      greater:out std_logic);
end comparator;

Architecture comparator_behv of comparator is
begin
    process(A,B)
begin
    if(A<B) then
        less<='1';
        equal<='0';
        greater<='0';
    elsif(A=B) then
        less<='0';
        equal<='1';
        greater<='1';
    else
        less<='0';
        equal<='0';
        greater<='1';
    end if;
    end process;
end comparator_behv;