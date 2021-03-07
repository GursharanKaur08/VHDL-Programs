Library ieee;
Use ieee.std_logic_1164.all;

Entity ha1 is
Port (a,b : in bit;
      Sum, Carry : out bit);
end ha1;

Architecture RTL of ha1 is

Component xor2
Port (l, m : in bit;
      p : out bit);
end Component;

Component and2
Port (n, o : in bit;
      q : out bit);
end Component;

begin
    X1: xor2 port map(a, b, Sum);
    A1: and2 port map(a, b, Carry);
end RTL;