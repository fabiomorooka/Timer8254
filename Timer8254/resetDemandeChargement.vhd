library ieee;
use ieee.std_logic_1164.all;

ENTITY resetDemandeChargement IS
PORT(	clk : IN std_logic;
    	charg_d : IN std_logic;
	resetCharge_d: OUT std_logic := '0'); 
END resetDemandeChargement;

ARCHITECTURE behaviour OF resetDemandeChargement IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF(charg_d = '1') THEN
				resetCharge_d <= '1';
			ELSE
				resetCharge_d <= '0';
			END IF;
		END IF;
	END PROCESS;
 END behaviour;