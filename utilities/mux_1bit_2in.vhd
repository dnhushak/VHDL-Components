library IEEE;
use IEEE.std_logic_1164.all;

entity mux_1bit_2in is
	port(c_S : in  std_logic;
		 i_A : in  std_logic;
		 i_B : in  std_logic;
		 o_D : out std_logic);

end mux_1bit_2in;

architecture structure of mux_1bit_2in is
begin
	--IF C == 0, THEN A, C == 1, THEN B
	o_D <= (not (c_S) and i_A) or (c_S and i_B);

end structure;
