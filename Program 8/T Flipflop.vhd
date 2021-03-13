Library ieee;
Use ieee.std_logic_1164.all;

Entity T_ff is
Port (t : in std_logic;
      clk : in std_logic;
      q : out std_logic);
End T_ff;

Architecture rtl of t_ff is
signal temp : std_logic;
    Begin
Process (clk)
    Begin
        temp<='0';
    If clk' event and clk='1' then
    If T='0' then
        temp<=temp;
    elsif T='1' then
        temp<= not temp;
    end if;
    end if;
end process;
        Q<= temp;
end rtl;