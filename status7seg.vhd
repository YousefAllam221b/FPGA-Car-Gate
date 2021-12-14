library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY status7seg is
	port (
		status, enable : in std_logic;
		letter1, letter2, letter3, letter4 : out std_logic_vector(0 to 6)
	);
end entity;

architecture arch of status7seg is
begin
	process(enable, status)
	begin
		if (enable = '0') then
			letter1 <= "1111111";
			letter2 <= "1111111";
			letter3 <= "1111111";
			letter4 <= "1111111";
		elsif (status = '0') then
			letter1 <= "0110001";
			letter2 <= "1110001";
			letter3 <= "0100100";
			letter4 <= "0110000";
		else
			letter1 <= "0000001";
			letter2 <= "0011000";
			letter3 <= "0110000";
			letter4 <= "1101000";
		end if;
	end process;
end arch;