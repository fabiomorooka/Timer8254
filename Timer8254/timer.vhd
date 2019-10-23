library work;
library ieee;
use ieee.std_logic_1164.all;

ENTITY timer IS
	PORT (	RD, WR, A0, CS, clk, gate : IN std_logic;
		val_out, charg_d_out : OUT std_logic;
		D : IN std_logic_vector(7 downto 0);
		DOUT : OUT std_logic_vector(7 downto 0);
		d_out_latch : OUT std_logic_vector(15 downto 0));
end timer;

architecture behavioural of timer is

--component declarations
component gestionBuffer is
	PORT (  latch_d : IN std_logic;
		count_val : IN std_logic_vector (15 DOWNTO 0);
		d_buf_out : OUT std_logic_vector (15 DOWNTO 0));
end component;

component decompteur is
	PORT(	charg_d : IN std_logic; 							-- Demande de chargement
    		d_buf_in : IN std_logic_vector(15 DOWNTO 0); 				-- Valeur de chargement
    		gate : IN std_logic;							-- Decompte ou faire rien	
    		clk : IN std_logic;								-- Signal clock
    		count_val : BUFFER std_logic_vector(15 DOWNTO 0) := "0000000000000110"; 	-- Valeur de la sortie
    		setOutput : OUT std_logic:='0';  					-- Zero au debout
    		resetCharge_d : OUT std_logic:='0'); 					-- Zero au debout
end component;

component gestionDialogue is
	PORT(	RD, WR, A0, CS: IN std_logic;
		sortie, charg_d: BUFFER std_logic;
		latch_d : OUT std_logic;
		d_buf_entree : IN std_logic_vector(15 downto 0);
		d_buf_sortie : OUT std_logic_vector(15 downto 0);
		D: IN std_logic_vector(7 downto 0);
		DOUT: OUT std_logic_vector(7 downto 0));	
end component;

component gestionVarPartagee is
	PORT(	S: IN std_logic;
  	     	R: IN std_logic;
       		Q: BUFFER std_logic);
end component;

--Signal declarations
SIGNAL charg_d_set, charg_d_reset, charg_d_out_timer, sortie_out_set, sortie_out_reset, latch_d_timer: std_logic;
SIGNAL count_val_timer, d_buf_in_timer, d_buf_out_timer: std_logic_vector (15 DOWNTO 0);	
SIGNAL sortie_out_timer: std_logic := '0';

begin
	d_out_latch <= d_buf_out_timer;
	charg_d_out <= charg_d_out_timer;
	val_out <= sortie_out_timer;
	
--Port maps
GD : gestionDialogue PORT MAP(RD, WR, A0, CS, sortie_out_reset, charg_d_set, latch_d_timer, d_buf_out_timer, d_buf_in_timer, D, DOUT);

varPartagee_charg_d: gestionVarPartagee PORT MAP(charg_d_set, charg_d_reset, charg_d_out_timer);
varPartagee_sortie_out: gestionVarPartagee PORT MAP(sortie_out_set, sortie_out_reset, sortie_out_timer); 


GB : gestionBuffer PORT MAP(latch_d_timer, count_val_timer, d_buf_out_timer);
D1 : decompteur PORT MAP(charg_d_out_timer, d_buf_in_timer, gate, clk, count_val_timer, sortie_out_set, charg_d_reset);

end behavioural;