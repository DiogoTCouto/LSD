--library IEEE;
--use IEEE.STD_LOGIC_1164.all;
--use IEEE.NUMERIC_STD.all;

--entity Bin2BCDDecoder is
	--port(	inBin	: in std_logic_vector (7 downto 0);
			--outBCD: out std_logic_vector(9 downto 0));

--end Bin2BCDDecoder;

--architecture Behavioral of Bin2BCDDecoder is
--begin
	--bcd1: process(inBin)
	--variable z:STD_LOGIC_VECTOR (17 downto 0);

	--begin

		--for i in 0 to 17 loop
			--z(i) := '0';                                         Falha ao implementar este programa na arquitetura 
		--end loop;
		--z(10 downto 3) := inBin;
	
		--for i in 0 to 4 loop
			--if z(11 downto 8) > 4 then
				--z(11 downto 8) := z (11 downto 8) + 3;
			--end if;
			--if z(15 downto 12) > 4 then
				--z(15 downto 12) := z (15 downto 12) + 3;
			--end if;
		--end loop;
		--outBCD <= z(17 downto 8);
	--end process bcd1;
--end Behavioral;