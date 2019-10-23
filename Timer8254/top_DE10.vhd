LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY top_DE10 IS
	PORT ( CLOCK_50 : IN std_logic;
			 SW : IN std_logic_vector(9 downto 0); 
			 KEY : IN std_logic_vector(1 downto 0);
			LED : OUT  std_logic_vector(9 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 downto 0));
--	PORT ( HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06 : OUT std_logic);
END top_DE10;

ARCHITECTURE arch_top OF top_DE10 IS
--Components declaration
COMPONENT Dvide_Freq
	PORT (in_clk : IN std_logic; out_cpt23 : OUT std_logic);
END COMPONENT;

COMPONENT DCB is
	port (datai : IN std_logic_vector (3 downto 0);
		segm : OUT std_logic_vector (6 downto 0) );
end COMPONENT; 

COMPONENT timer IS
	PORT (	RD, WR, A0, CS, clk, gate : IN std_logic;
		val_out, charg_d_out : OUT std_logic;
		D : IN std_logic_vector(7 downto 0);
		DOUT : OUT std_logic_vector(7 downto 0);
		d_out_latch : OUT std_logic_vector(15 downto 0));
END COMPONENT;
-- signals declaration
SIGNAL CS, RD, WR, A0, gate, CLK, val_out, charg_d_out: std_logic;
SIGNAL D, DOUT: std_logic_vector(7 downto 0);
SIGNAL d_out_latch: std_logic_vector(15 downto 0);

BEGIN
--Inputs
	CS <= KEY(0);
	RD <= SW(0);
	WR <= SW(1);	
	A0 <= SW(2);
	gate <= SW(3);
	D <= SW(9 downto 4)&"00";
	
-- Display LEDs
	LED(0) <= RD;
	LED(1) <= WR;	
	LED(2) <= A0;
	LED(3) <= gate;
	LED(4) <= CS;
	LED(7) <= charg_d_out;
	LED(8) <= val_out;
	LED(9) <= clk;	
-- Other LEDs off	
	LED(6 downto 5) <= "00";
	
-- Divide input frequency 50 MHz by 2 exp 24
Divide : Dvide_Freq PORT MAP ( in_clk => CLOCK_50, out_cpt23 => clk);
			
-- Display 7 segments	
-- LSB of DOUT	on Seg 0	
	DCB1 : DCB PORT MAP (datai => DOUT(3 downto 0), segm => HEX0);
-- MSB of DOUT	on Seg 1	
	DCB2 : DCB PORT MAP (datai => DOUT(7 downto 4), segm => HEX1);	
-- d_buf_out on Seg 2 to 5
	DCB3 : DCB PORT MAP (datai => d_out_latch(15 downto 12), segm => HEX5);
	DCB4 : DCB PORT MAP (datai => d_out_latch(11 downto 8), segm => HEX4);
	DCB5 : DCB PORT MAP (datai => d_out_latch(7 downto 4), segm => HEX3);
	DCB6 : DCB PORT MAP (datai => d_out_latch(3 downto 0), segm => HEX2);			
-- Instance of timer 
	timer1: timer PORT MAP (RD, WR, A0, CS, clk, gate, val_out, charg_d_out, D, DOUT, d_out_latch);
END arch_top;