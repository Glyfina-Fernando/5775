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
             dwidth     : integer := 54; 
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
    0 => "110010010000111111011010101000000110110001101001000000", 
    1 => "011101101011000110011100000100010011101010000111010111", 
    2 => "001111101011011011101011111100011100110110000100101001", 
    3 => "000111111101010110111010100011111011101111111101110100", 
    4 => "000011111111101010101101110011101011100001100111111011", 
    5 => "000001111111111101010101011000000010111010111110110110", 
    6 => "000000111111111111101010101000000011011000101111101010", 
    7 => "000000011111111111111101010100001100111000100011101110", 
    8 => "000000001111111111111111101000011000001010111110100000", 
    9 => "000000000111111111111111111011101101000111110100000101", 
    10 => "000000000011111111111111111100001111011110110101100101", 
    11 => "000000000001111111111111111100100000101010010110010100", 
    12 => "000000000000111111111111111100000110111001000101001101", 
    13 => "000000000000011111111111111100011100010111011110001000", 
    14 => "000000000000001111111111111011100010011000100111101000", 
    15 => "000000000000000111111111111100001010000111001111010110", 
    16 => "000000000000000011111111111011111011100111100001101110", 
    17 => "000000000000000001111111111100010110101110101100011001", 
    18 => "000000000000000001000000000000010100110011011100001001", 
    19 => "000000000000000000011111111100011001111000100011101010" );


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
        DataWidth : INTEGER := 54;
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


