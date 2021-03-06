-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cordic_angles_rom is 
    generic(
             dwidth     : integer := 64; 
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


architecture rtl of cordic_angles_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0011111111101001001000011111101101010100000011011000110100100000", 
    1 => "0011111111011101101011000110011100000100010011101010000111010111", 
    2 => "0011111111001111010110110111010111111000111001101100001001010011", 
    3 => "0011111110111111110101011011101010001111101110111111110111010000", 
    4 => "0011111110101111111101010101101110011101011100001100111111011101", 
    5 => "0011111110011111111111010101010110000000101110101111101101101001", 
    6 => "0011111110001111111111110101010100000001101100010111110101011101", 
    7 => "0011111101111111111111111101010100001100111000100011101110011111", 
    8 => "0011111101101111111111111111010000110000010101111101000001100101", 
    9 => "0011111101011111111111111111101110110100011111010000010111110110", 
    10 => "0011111101001111111111111111100001111011110110101100101001101111", 
    11 => "0011111100111111111111111111001000001010100101100101001101100000", 
    12 => "0011111100101111111111111110000011011100100010100110101100111010", 
    13 => "0011111100011111111111111100011100010111011110001000111011111111", 
    14 => "0011111100001111111111110111000100110001001111010000011000111101", 
    15 => "0011111011111111111111110000101000011100111101011001010101010100", 
    16 => "0011111011101111111111011111011100111100001101110001001011100111", 
    17 => "0011111011011111111111000101101011101011000110010100111101000011", 
    18 => "0011111011010000000000000101001100110111000010011010110001111100", 
    19 => "0011111010111111111100011001111000100011101010000011011011111100" );


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

entity cordic_angles is
    generic (
        DataWidth : INTEGER := 64;
        AddressRange : INTEGER := 20;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of cordic_angles is
    component cordic_angles_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;




begin
    cordic_angles_rom_U :  component cordic_angles_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


