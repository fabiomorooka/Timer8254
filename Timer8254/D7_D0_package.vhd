library work;
library ieee;
use ieee.std_logic_1164.all;

package D7_D0 IS
	TYPE RW_type IS (Latch, Least, Most, LeastMost);
	function RW_convert (signal D : std_logic_vector(7 downto 0)) return RW_type;
end D7_D0;

package body D7_D0 is
    function RW_convert (signal D : std_logic_vector(7 downto 0)) return RW_type is
    variable rw: RW_type; -- local variable
    variable RW_temp : std_logic_vector(1 downto 0);
    begin
        RW_temp(0) := D(4);	
        RW_temp(1) := D(5);	
        case RW_temp is
            when "00"   => rw := Latch;
            when "01"   => rw := Least;
            when "10"   => rw := Most;
            when OTHERS => rw := Leastmost;
        end case;
        return rw;  -- return min value
    end;
end D7_D0;