----------------------------------------------------------------------------------
-- Kaleb Key

-- Built a system in which the built in switches on the basys3 board control
--LED lights in numbered sequence as well as count up on the
-- seven segment display
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity switch_counter is
  Port (
    sw: in std_logic_vector(7 downto 0):= "11111111";
    led: out std_logic_vector(7 downto 0);
    seg: out std_logic_vector(6 downto 0);
    an: out std_logic_vector(3 downto 0)
          );
end switch_counter;

architecture switch_counter_ARCH of switch_counter is
--states for LEDS Activity------------------------------------CONSTANTS
constant LED_ON:  std_logic := '0';
constant LED_OFF: std_logic := '1';

--states for input switches-----------------------------------CONSTANTS
constant ACTIVE:	 std_logic := '0';
constant NOT_ACTIVE: std_logic := '1';

----anode position selection settings-------------------------CONSTANTS
constant ANODE_POSITION_O: std_logic_vector(3 downto 0) := "1110";
constant ANODE_POSITION_1: std_logic_vector(3 downto 0) := "1101";
constant ANODE_POSITION_2: std_logic_vector(3 downto 0) := "1011";
constant ANODE_POSITION_3: std_logic_vector(3 downto 0) := "0111";

--LED lights in order-----------------------------------------CONSTANTS
constant LED_0: std_logic_vector(7 downto 0):= "00000000";
constant LED_1: std_logic_vector(7 downto 0):= "00000001";
constant LED_2: std_logic_vector(7 downto 0):= "00000011";
constant LED_3: std_logic_vector(7 downto 0):= "00000111";
constant LED_4: std_logic_vector(7 downto 0):= "00001111";
constant LED_5: std_logic_vector(7 downto 0):= "00011111";
constant LED_6: std_logic_vector(7 downto 0):= "00111111";
constant LED_7: std_logic_vector(7 downto 0):= "01111111";
constant LED_8: std_logic_vector(7 downto 0):= "11111111";

--seven segment display for basys3----------------------------CONSTANTS
constant ZERO_7SEG: std_logic_vector(6 downto 0) := "1000000";
constant ONE_7SEG:  std_logic_vector(6 downto 0) := "1111001";
constant TWO_7SEG:  std_logic_vector(6 downto 0) := "0100100";
constant THREE_7SEG:std_logic_vector(6 downto 0) := "0110000";
constant FOUR_7SEG: std_logic_vector(6 downto 0) := "0011001";
constant FIVE_7SEG: std_logic_vector(6 downto 0) := "0010010";
constant SIX_7SEG:  std_logic_vector(6 downto 0) := "0000010";
constant SEVEN_7SEG:std_logic_vector(6 downto 0) := "1111000";
constant EIGHT_7SEG:std_logic_vector(6 downto 0) := "0000000";

begin

--Bar display is updated when a switch is pressed--------------PROCESS
BAR_DISPLAY: process(sw)
	variable count: integer RANGE 0 TO 8:=0;
begin
--count is the number of time a switch is activated-------------------
	count := 0;
	if (sw(0) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(1) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(2) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(3) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(4) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(5) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(6) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(7) = ACTIVE) then
		count := count + 1;
	end if;


--LED bar is updated based upon count value------------------------
case count is
	when 0 =>
		led <= led_0;
		an  <= ANODE_POSITION_3;
		seg <= ZERO_7SEG;
	when 1 =>
		led <= LED_1;
		an  <= ANODE_POSITION_3;
		seg <= ONE_7SEG;
	when 2 =>
		led <= LED_2;
		an  <= ANODE_POSITION_3;
		seg <= TWO_7SEG;
	when 3 =>
		led <= LED_3;
		an  <= ANODE_POSITION_3;
		seg <= THREE_7SEG;
	when 4 =>
		led <= LED_4;
		an  <= ANODE_POSITION_3;
		seg <= FOUR_7SEG;
	when 5 =>
		led <= LED_5;
		an  <= ANODE_POSITION_3;
		seg <= FIVE_7SEG;
	when 6 =>
		led <= LED_6;
		an  <= ANODE_POSITION_3;
		seg <= SIX_7SEG;
	when 7 =>
		led <= LED_7;
		an  <= ANODE_POSITION_3;
		seg <= SEVEN_7SEG;
	when 8 =>
		led <= LED_8;
		an  <= ANODE_POSITION_3;
		seg <= EIGHT_7SEG;
	when others => -- to cover other possible values
		led <= LED_0;
		an  <= ANODE_POSITION_3;
		seg <= EIGHT_7SEG;
	end case;
end process;

end switch_counter_ARCH;
