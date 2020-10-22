----------------------------------------------------------------------------------
-- Kaleb Key
 Referee
-- Due: 9/8/2020
-- This is a system where there are four inputs(referees) and one of these referees
-- is the head referee. When a call is contested, the head referee's decision is final.
--
----------------------------------------------------------------------------------


library IEEE;
use ieee.std_logic_1164.all;

entity Referee is
    Port ( a : in  std_logic;
           b : in  std_logic;
           c : in  std_logic;
           d : in  std_logic;
           x : out std_logic);
end Referee;

architecture Referee_ARCH of Referee is
  
  signal ref : std_logic_vector(3 downto 0);
    
    
   
    

begin

      with ref select
        x <= '0' when "0000",
             '0' when "0001",
             '0' when "0010",            
             '0' when "0100",            
             '0' when "0110",             
             '0' when "1000",              
             '0' when "1010",          
             '0' when "1100",            
             '1' when others; 


end Referee_ARCH;
