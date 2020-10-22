----------------------------------------------------------------------------------
--Referee_TB
--
--Test bench for Referee program that exercises all inputs to ensure proper
--functionality.
--
--Designer: Kaleb Key
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity Referee_TB is
end Referee_TB;

architecture Referee_TB_ARCH of Referee_TB is


    --unit-under-test-------------------------------------------------------------
    component Referee
        port (
            a: in  std_logic;
            b: in  std_logic;
            c: in  std_logic;
            d: in  std_logic;
            x: out std_logic
         );
     end component;
    --UUT-signals-----------------------------------------------------------------
    signal a: std_logic;
    signal b: std_logic;
    signal c: std_logic;
    signal d: std_logic;
    signal x: std_logic;

begin
    --unit-under-test-------------------------------------------------------------
    UUT: Referee port map (
        a => a,
        b => b,
        c => c,
        d => d,
        x => x
     );
     
     WAVEFORM_GEN: process
     begin
            a <= '0';
            b <= '0';
            c <= '0';
            d <= '0';
            wait for 20 ns;
            
            a <= '0';
            b <= '0';
            c <= '0';
            d <= '1';
            wait for 20 ns;
            
            a <= '0';
            b <= '0';
            c <= '1';
            d <= '0';
            wait for 20 ns;
            
            a <= '0';
            b <= '0';
            c <= '1';
            d <= '1';
            wait for 20 ns;
            
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '0';
            wait for 20 ns;
            
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '1';
            wait for 20 ns;
            
            a <= '0';
            b <= '1';
            c <= '1';
            d <= '0';
            wait for 20 ns;
            
            a <= '0';
            b <= '1';
            c <= '1';
            d <= '1';
            wait for 20 ns;
            
            a <= '1';
            b <= '0';
            c <= '0';
            d <= '0';
            wait for 20 ns;
            
            a <= '1';
            b <= '0';
            c <= '0';
            d <= '1';
            wait for 20 ns;
            
            a <= '1';
            b <= '0';
            c <= '1';
            d <= '0';
            wait for 20 ns;
            
            a <= '1';
            b <= '0';
            c <= '1';
            d <= '1';
            wait for 20 ns;
            
            a <= '1';
            b <= '1';
            c <= '0';
            d <= '0';
            wait for 20 ns;
            
            a <= '1';
            b <= '1';
            c <= '0';
            d <= '1';
            wait for 20 ns;
            
            a <= '1';
            b <= '1';
            c <= '1';
            d <= '0';
            wait for 20 ns;
            
            a <= '1';
            b <= '1';
            c <= '1';
            d <= '1';
            wait;
        end process;
            
end Referee_TB_ARCH;
