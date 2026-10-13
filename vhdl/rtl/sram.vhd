
library ieee;
use ieee.std_logic_1164.all;


entity sram is 
    
    port (
        clk_i     : in  std_ulogic;
        addr_i    : in  std_ulogic_vector(9 downto 0);
        data_i    : in  std_ulogic_vector(63 downto 0);
        banksel_i : in  std_ulogic;
        read_i    : in  std_ulogic;
        write_i   : in  std_ulogic;
        data_o    : out std_ulogic_vector(63 downto 0)
    );

end entity;

architecture rtl of sram is 
    component srambank_256x4x64_6t122 is 
		port (
			clk     : in std_ulogic;
			ADDRESS : in std_ulogic_vector(9 downto 0);
			wd      : in std_ulogic_vector(63 downto 0);
			banksel : in std_ulogic;
			read    : in std_ulogic;
			write   : in std_ulogic;
			dataout : out std_ulogic_vector(63 downto 0)
		);
	end component;
begin 

    sram : srambank_256x4x64_6t122 
    port map (
        clk     => clk_i, 
        ADDRESS => addr_i, 
        wd  	=> data_i, 
        banksel => banksel_i,
        read    => read_i, 
        write   => write_i, 
        dataout => data_o
    );


end architecture;
