library ieee;
use ieee.std_logic_1164.all;

ENTITY detectionZero IS
PORT(	sortie_out : OUT std_logic := '0'; 		-- Signal de la sortie defaut a 0 
	count_val : IN std_logic_vector(15 DOWNTO 0)); 	-- Valeur du decompteur
END detectionZero;

ARCHITECTURE behaviour OF detectionZero IS
BEGIN
	PROCESS(count_val)
	BEGIN
		IF(count_val = "0000000000000000") THEN
			sortie_out <= '1';
		ELSE
			sortie_out <= '0';
		END IF;
	END PROCESS;
 END behaviour;