library work;
library ieee;
use ieee.std_logic_1164.all;
use work.D7_D0.all;

entity gestionDialogue is
	port (	RD, WR, A0, CS: IN std_logic;
		sortie, charg_d: BUFFER std_logic;
		latch_d : OUT std_logic;
		d_buf_entree : IN std_logic_vector(15 downto 0);
		d_buf_sortie : OUT std_logic_vector(15 downto 0);
		D: IN std_logic_vector(7 downto 0);
		DOUT: OUT std_logic_vector(7 downto 0));
end gestionDialogue;

architecture behavioural of gestionDialogue is

SIGNAL D_RW, RW_op : RW_type := Least;
TYPE etat_rw IS (L,M);
SIGNAL Etat_w, Etat_r : etat_rw := L;

BEGIN
	PROCESS(CS)
	BEGIN
		if( charg_d = '1' AND sortie = '1') then
			charg_d <= '0'; sortie <= '0';
		elsif( charg_d = '1' AND sortie = '0') then
			charg_d <= '0';
		elsif( charg_d = '0' AND sortie = '1') then
			sortie <= '0';
		elsif(FALLING_EDGE(CS)) then
			--Reception controle
			if(WR = '1' and RD = '0' and A0 = '1') then
				--set value of RW_signal
				D_RW <= RW_convert(D);
				if(D_RW = Latch) then
					latch_d <= '1';	
				else
					RW_op <= D_RW;	--RW component of DP octet
					latch_d <= '0';
					sortie <= '1';
					-- testMSB
					if (D_RW = Most) then
						Etat_r <= M;
						Etat_w <= M;
					else
						Etat_r <= L;
						Etat_w <= L;
					end if;
				end if;
			--Reception data
			elsif(WR = '1' and RD = '0' and A0 = '0') then
				sortie <= '1';
				if(etat_w = L) then
					--d_out buffer lsb
					d_buf_sortie(7 DOWNTO 0) <= D;
					-- test_etat_recLSB
					if(RW_op = LeastMost) then
						Etat_w <= M;
					else
						d_buf_sortie(15 DOWNTO 8) <= "00000000";
						charg_d <= '1';
					end if;
				else
					--d_out buffer mlsb
					d_buf_sortie(15 DOWNTO 8) <= D;
					-- test_etat_recMSB
					if(RW_op = LeastMost) then
						Etat_w <= L;
						charg_d <= '1';
					else
						d_buf_sortie(7 DOWNTO 0) <= "00000000";
						charg_d <= '1';
					end if;
				end if;
			-- Envoi data
			elsif(WR = '0' and RD = '1' and A0 = '0') then
				if(etat_r = L) then
					--d_out buffer lsb
					DOUT <= d_buf_entree(7 DOWNTO 0);
				else
					--d_out buffer msb
					DOUT <= d_buf_entree(15 DOWNTO 8);
				end if;
				-- test_etat_envoi
				if(RW_op = LeastMost) then
					if(Etat_r <= L) then
						Etat_r <= M;
					else
						Etat_r <= L;
						latch_d <= '0';
					end if;
				else
					latch_d <= '0';
				end if;
			end if;
		end if;
	end process;
--	DOUT(6 downto 5) <= RW_revert (D_RW);
end behavioural;