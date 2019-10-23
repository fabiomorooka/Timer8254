


-- declaration DCB transcoder 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DCB is
	port (datai : IN std_logic_vector (3 downto 0);
		segm : OUT std_logic_vector (6 downto 0) );
end DCB;

architecture arch_DCB of DCB is

	constant seg0 : std_logic_vector (6 downto 0) := ('0','1','1','1','1','1','1') ;
	constant seg1 : std_logic_vector (6 downto 0) := ('0','0','0','0','1','1','0') ;
	constant seg2 : std_logic_vector (6 downto 0) := ('1','0','1','1','0','1','1') ;
	constant seg3 : std_logic_vector (6 downto 0) := ('1','0','0','1','1','1','1') ;
	constant seg4 : std_logic_vector (6 downto 0) := ('1','1','0','0','1','1','0') ;
	constant seg5 : std_logic_vector (6 downto 0) := ('1','1','0','1','1','0','1') ;
	constant seg6 : std_logic_vector (6 downto 0) := ('1','1','1','1','1','0','1') ;
	constant seg7 : std_logic_vector (6 downto 0) := ('0','0','0','0','1','1','1') ;
	constant seg8 : std_logic_vector (6 downto 0) := ('1','1','1','1','1','1','1') ;
	constant seg9 : std_logic_vector (6 downto 0) := ('1','1','0','0','1','1','1') ;
	constant seg10 : std_logic_vector (6 downto 0) := ('1','1','1','0','1','1','1') ;
	constant seg11 : std_logic_vector (6 downto 0) := ('1','1','1','1','1','0','0') ;
	constant seg12 : std_logic_vector (6 downto 0) := ('0','1','1','1','0','0','1') ;
	constant seg13 : std_logic_vector (6 downto 0) := ('1','0','1','1','1','1','0') ;
	constant seg14 : std_logic_vector (6 downto 0) := ('1','1','1','1','0','0','1') ;
	constant seg15 : std_logic_vector (6 downto 0) := ('1','1','1','0','0','0','1') ;
	
	signal sortie : std_logic_vector (6 downto 0):= seg1;

begin 

	with datai select
		sortie <= seg1 when X"1",
				seg2 when X"2",
				seg3 when X"3",
				seg4 when X"4",
				seg5 when X"5",
				seg6 when X"6",
				seg7 when X"7",
				seg8 when X"8",                            
				seg9 when X"9",
				seg10 when X"A",
				seg11 when X"B",
				seg12 when X"C",
				seg13 when X"D",			
				seg14 when X"E",
				seg15 when X"F",
				seg0 when others;
				
segm  <= sortie XOR ('1','1','1','1','1','1','1');
	
--	segm  <= sortie ;


end arch_DCB;

