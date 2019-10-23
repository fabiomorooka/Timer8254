library ieee;
use ieee.std_logic_1164.all;

ENTITY gestionVarPartagee IS
	PORT(	S: IN std_logic;
  	     	R: IN std_logic;
       		Q: BUFFER std_logic);
END gestionVarPartagee;

ARCHITECTURE behaviour OF gestionVarPartagee IS

	SIGNAL notQ : STD_LOGIC;

	BEGIN
		Q <= R nor notQ;
		notQ <= S nor Q;	
 END behaviour;