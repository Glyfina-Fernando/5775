-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cordic_angles_V_rom is 
    generic(
             dwidth     : integer := 28; 
             awidth     : integer := 5; 
             mem_size    : integer := 20
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of cordic_angles_V_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1100100100001111110110101010", 1 => "0111011010110001100111000001", 
    2 => "0011111010110110111010111111", 3 => "0001111111010101101110101000", 
    4 => "0000111111111010101011011100", 5 => "0000011111111111010101010110", 
    6 => "0000001111111111111010101010", 7 => "0000000111111111111111010101", 
    8 => "0000000011111111111111111010", 9 => "0000000001111111111111111110", 
    10 => "0000000000111111111111111111", 11 => "0000000000011111111111111111", 
    12 => "0000000000001111111111111111", 13 => "0000000000000111111111111111", 
    14 => "0000000000000011111111111110", 15 => "0000000000000001111111111111", 
    16 => "0000000000000000111111111110", 17 => "0000000000000000011111111111", 
    18 => "0000000000000000010000000000", 19 => "0000000000000000000111111111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity cordic_angles_V is
    generic (
        DataWidth : INTEGER := 28;
        AddressRange : INTEGER := 20;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of cordic_angles_V is
    component cordic_angles_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;




begin
    cordic_angles_V_rom_U :  component cordic_angles_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

