----------------------------------------------------------------------------------
-- Kaleb Key
-- Test bench for switch counter application
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity switch_counter_TB is
end switch_counter_TB;

architecture switch_counter_TB_ARCH of switch_counter_TB is

--Unit-under-test-------------------------------------------------------------------
component switch_counter
    port (
        sw:  in std_logic_vector(7 downto 0);
        led: out std_logic_vector(7 downto 0);
        seg: out std_logic_vector(6 downto 0);
        an:  out std_logic_vector(3 downto 0)
        );
end component;

--UUT-signals---------------------------------------------------------------------------
signal sw:  std_logic_vector(7 downto 0) := "11111111";
signal led: std_logic_vector(7 downto 0);
signal seg: std_logic_vector(6 downto 0);
signal an:  std_logic_vector(3 downto 0);

begin
    --Unit-under-test----------------------------------------------------------

    WAVEFORM_GEN: process
    begin
        sw(0) <= '0';
        sw(1) <= '0';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '0';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;
        
        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '0';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
        wait;
     end process;


end switch_counter_TB_ARCH;
