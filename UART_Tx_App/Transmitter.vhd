-- TODO LICENCE

-- date : Mon Apr 23 21:31:56 CEST 2018

-- Author1 Dodotronix
-- Author2 Marex Smida

---------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;  -- +/- operations
use ieee.numeric_std.all;         -- shift functions

entity Transmitter is
  generic (
    -- default clock = 1MHz
    -- clock / 2*baud_rate => 1e6/(2*9600) = 52
    PSC_Period :  integer :=  52; -- clock prescaler
    p_bit      :  in std_logic_vector(1 downto 0) := "01"; -- parity bit none(0)/even(01)/odd(10)
    s_bit      :  in std_logic := '0'; -- stop bit length 1 (log0) or 2 log(1)
    f_len      :  in integer range 5 to 8 := 8 -- frame length 5 - 8 (00 - 11)
  );

  Port(
    sw_panel  :  in std_logic_vector(7 downto 0);
    ack       :  in std_logic; -- switch, so it will repaeat until active
    clk       :  in std_logic; -- input system clock
    tx_serial :  out std_logic -- tx data output
  );
end Transmitter;

architecture Behavioral of Transmitter is
  -- UART bus status
  type status is (Idle, Start_bit, Send_data, Parity, Stop_bit);
  signal bus_state :  status := Idle;
  
  signal s_ack     :  std_logic := '1' ; -- press button for
  signal db        :  integer := 0; -- deley to deside if it is bouncing effect or not
  signal tx_active :  std_logic := '0';  -- log1 if bus is busy
	
  -- UART options signals
  signal data_word :  std_logic_vector(14 downto 0); -- data word
  signal parity_op :  std_logic_vector(1 downto 0); -- parity option none/even/odd
  signal sbit_cnt  :  std_logic; -- number of stop bits (0 or 1)
  signal bit_ctr   :  integer := 0; -- bit counter (index of word)
  signal f_length  :  integer; -- frame length
  signal done      :  integer := 0; -- flag transaction accomplished
  signal indicator :  std_logic := '0';

  -- prescaler help signals
  signal tmp_tx  :  std_logic := '1'; -- idle state of tx (standard log1)
  signal PSC_out :  std_logic := '0'; -- scaled clock cycle
  signal PSC     :  integer range 0 to PSC_Period - 1:= 0;

  -- calculate parity bit
  function cal_parity(V : std_logic_vector) return std_logic is
    variable result : std_logic := '0';
  begin 
    for pos in V'range loop
      result := result xor V(pos);
    end loop;
    return result;
  end cal_parity;
begin

  -- scaling clock and detecting button presses
  process(clk)
  begin
    if rising_edge(clk) then
      PSC <= PSC + 1;

      if PSC = PSC_Period - 1 then
	PSC <= 0;
	PSC_out <= not PSC_out;
      end if;

      if ack /= s_ack then -- state has changed
	-- debounce key
	if db < 1500 then
	  db <= db + 1;
	else 
	  s_ack <= ack; --current value
	  db <= 0; -- clear debouce counter
	end if;
      end if;
    end if;
  end process;

  -- UART_TX process
  process(PSC_out, s_ack)
  begin
    if rising_edge(PSC_out) then
      if s_ack = '0' and tx_active = '0' then
      tx_active <= '1';
      end if;

      -- UART FSM
      case bus_state is
	when Idle =>
	  bit_ctr <= 0;
	  done <= 0;
	  if tx_active  = '1' then
	    data_word(7 downto 0) <= sw_panel;
	    parity_op <= p_bit;
	    sbit_cnt <= s_bit;
	    f_length <= f_len;
	    bus_state <=Start_bit;
	  end if;
	--//Idle

	when Start_bit =>
	  tmp_tx <= '0';
	  bus_state <= Send_data;
	--//Start_bit

	when Send_data =>
	    tmp_tx <= data_word(bit_ctr);
	  if f_length - bit_ctr -1 > 0 then
	    bit_ctr <= bit_ctr + 1;
	  else
	    if f_length < 8 and indicator < '1' then -- 8 because size of word is 8 bits
	      -- shift data right on the lower positions
	      data_word(f_length -1 downto 0) <= data_word((f_length - 1)*2 downto f_length); -- shift bits right
	      bit_ctr <= 0;
	      indicator <= '1';
	    else
	      done <= 1;
	    end if;
	    if parity_op > "00" then
	      bus_state <= Parity;
	    else 
	      bus_state <= Stop_bit;
	    end if;
	  end if;
	--//Send_data

	when Parity =>
	  if parity_op = "01" then
	    tmp_tx <= cal_parity(data_word(f_length - 1 downto 0));
	  elsif parity_op = "10" then
	    tmp_tx <= not cal_parity(data_word(f_length - 1 downto 0));
	  end if;
	  bus_state <= Stop_bit;
	--//Parity

	when Stop_bit =>
	  tmp_tx <= '1'; -- bus high
	  if sbit_cnt > '0' then
	    sbit_cnt <= '0';
	  else
	    if done /= 1 then
	      bus_state  <= Start_bit;
	    else
	      bus_state <= Idle;
	      tx_active <= '0';
	      indicator <= '0';
	    end if;
	  end if;
	--//Stop_bit
      end case;
    end if;
  end process;
      
  -- output UART Tx
  Tx_serial <= tmp_tx;

end Behavioral;
