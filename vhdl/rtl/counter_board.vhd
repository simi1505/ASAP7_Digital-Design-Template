-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 07.12.2024
-- Description: This .vhd file implements the board wrapper of the counter entity in VHDL.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.constants_p.all;
use work.all;

entity counter_board is
	
	port(
    	clock_i 	    : in std_ulogic;
		reset_n_i 	    : in std_ulogic;
    	enable_i        : in std_ulogic;

		-- if you want to use the ASAP7 SRAM block
		-- uncomment this block:
		-- <block begin>
		addr_i    : in  std_ulogic_vector(9 downto 0);
        data_i    : in  std_ulogic_vector(63 downto 0);
        banksel_i : in  std_ulogic;
        read_i    : in  std_ulogic;
        write_i   : in  std_ulogic;
        data_o    : out std_ulogic_vector(63 downto 0);
		-- <block end>


		counter_value_o : out unsigned(COUNTER_BITWIDTH - 1 downto 0)
	);

end entity counter_board;

architecture rtl of counter_board is

	-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
	signal reset 		: std_ulogic;

begin
	
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Counter
	counter_0: entity counter(rtl)
	generic map(
		COUNTER_BITWIDTH  => COUNTER_BITWIDTH,
		COUNTER_MAX       => COUNTER_MAX
	)
	port map(
		clock_i         => clock_i,
		reset_i	        => reset,
		enable_i        => enable_i,

		counter_value_o => counter_value_o
	);

	sram : entity work.sram 
	port map (
		clk_i     => clock_i,
        addr_i    => addr_i,    
        data_i    => data_i,    
        banksel_i => banksel_i, 
        read_i    => read_i, 
        write_i   => write_i,   
        data_o    => data_o    
	);

end architecture rtl;
