library ieee;
use ieee.std_logic_1164.ALL;

ENTITY gestionBuffer IS
PORT (  latch_d : IN std_logic;
	count_val : IN std_logic_vector (15 DOWNTO 0);
	d_buf_out : OUT std_logic_vector (15 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavior OF gestionBuffer IS 
BEGIN
	PROCESS (latch_d, count_val) IS
	BEGIN
		IF (latch_d = '0') THEN
			d_buf_out <= count_val;
		END IF;
	END PROCESS;
END behavior;