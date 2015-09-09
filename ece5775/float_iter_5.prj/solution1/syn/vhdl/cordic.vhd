-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordic is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    theta : IN STD_LOGIC_VECTOR (31 downto 0);
    s : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_ap_vld : OUT STD_LOGIC;
    c : OUT STD_LOGIC_VECTOR (31 downto 0);
    c_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cordic is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "cordic,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.593000,HLS_SYN_LAT=212,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (5 downto 0) := "000111";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (5 downto 0) := "001001";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (5 downto 0) := "001010";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (5 downto 0) := "001011";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (5 downto 0) := "001100";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (5 downto 0) := "001101";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (5 downto 0) := "001110";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (5 downto 0) := "001111";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (5 downto 0) := "010001";
    constant ap_ST_st19_fsm_18 : STD_LOGIC_VECTOR (5 downto 0) := "010010";
    constant ap_ST_st20_fsm_19 : STD_LOGIC_VECTOR (5 downto 0) := "010011";
    constant ap_ST_st21_fsm_20 : STD_LOGIC_VECTOR (5 downto 0) := "010100";
    constant ap_ST_st22_fsm_21 : STD_LOGIC_VECTOR (5 downto 0) := "010101";
    constant ap_ST_st23_fsm_22 : STD_LOGIC_VECTOR (5 downto 0) := "010110";
    constant ap_ST_st24_fsm_23 : STD_LOGIC_VECTOR (5 downto 0) := "010111";
    constant ap_ST_st25_fsm_24 : STD_LOGIC_VECTOR (5 downto 0) := "011000";
    constant ap_ST_st26_fsm_25 : STD_LOGIC_VECTOR (5 downto 0) := "011001";
    constant ap_ST_st27_fsm_26 : STD_LOGIC_VECTOR (5 downto 0) := "011010";
    constant ap_ST_st28_fsm_27 : STD_LOGIC_VECTOR (5 downto 0) := "011011";
    constant ap_ST_st29_fsm_28 : STD_LOGIC_VECTOR (5 downto 0) := "011100";
    constant ap_ST_st30_fsm_29 : STD_LOGIC_VECTOR (5 downto 0) := "011101";
    constant ap_ST_st31_fsm_30 : STD_LOGIC_VECTOR (5 downto 0) := "011110";
    constant ap_ST_st32_fsm_31 : STD_LOGIC_VECTOR (5 downto 0) := "011111";
    constant ap_ST_st33_fsm_32 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_ST_st34_fsm_33 : STD_LOGIC_VECTOR (5 downto 0) := "100001";
    constant ap_ST_st35_fsm_34 : STD_LOGIC_VECTOR (5 downto 0) := "100010";
    constant ap_ST_st36_fsm_35 : STD_LOGIC_VECTOR (5 downto 0) := "100011";
    constant ap_ST_st37_fsm_36 : STD_LOGIC_VECTOR (5 downto 0) := "100100";
    constant ap_ST_st38_fsm_37 : STD_LOGIC_VECTOR (5 downto 0) := "100101";
    constant ap_ST_st39_fsm_38 : STD_LOGIC_VECTOR (5 downto 0) := "100110";
    constant ap_ST_st40_fsm_39 : STD_LOGIC_VECTOR (5 downto 0) := "100111";
    constant ap_ST_st41_fsm_40 : STD_LOGIC_VECTOR (5 downto 0) := "101000";
    constant ap_ST_st42_fsm_41 : STD_LOGIC_VECTOR (5 downto 0) := "101001";
    constant ap_ST_st43_fsm_42 : STD_LOGIC_VECTOR (5 downto 0) := "101010";
    constant ap_ST_st44_fsm_43 : STD_LOGIC_VECTOR (5 downto 0) := "101011";
    constant ap_ST_st45_fsm_44 : STD_LOGIC_VECTOR (5 downto 0) := "101100";
    constant ap_ST_st46_fsm_45 : STD_LOGIC_VECTOR (5 downto 0) := "101101";
    constant ap_ST_st47_fsm_46 : STD_LOGIC_VECTOR (5 downto 0) := "101110";
    constant ap_ST_st48_fsm_47 : STD_LOGIC_VECTOR (5 downto 0) := "101111";
    constant ap_ST_st49_fsm_48 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_ST_st50_fsm_49 : STD_LOGIC_VECTOR (5 downto 0) := "110001";
    constant ap_ST_st51_fsm_50 : STD_LOGIC_VECTOR (5 downto 0) := "110010";
    constant ap_ST_st52_fsm_51 : STD_LOGIC_VECTOR (5 downto 0) := "110011";
    constant ap_ST_st53_fsm_52 : STD_LOGIC_VECTOR (5 downto 0) := "110100";
    constant ap_ST_st54_fsm_53 : STD_LOGIC_VECTOR (5 downto 0) := "110101";
    constant ap_ST_st55_fsm_54 : STD_LOGIC_VECTOR (5 downto 0) := "110110";
    constant ap_ST_st56_fsm_55 : STD_LOGIC_VECTOR (5 downto 0) := "110111";
    constant ap_ST_st57_fsm_56 : STD_LOGIC_VECTOR (5 downto 0) := "111000";
    constant ap_ST_st58_fsm_57 : STD_LOGIC_VECTOR (5 downto 0) := "111001";
    constant ap_ST_st59_fsm_58 : STD_LOGIC_VECTOR (5 downto 0) := "111010";
    constant ap_ST_st60_fsm_59 : STD_LOGIC_VECTOR (5 downto 0) := "111011";
    constant ap_ST_st61_fsm_60 : STD_LOGIC_VECTOR (5 downto 0) := "111100";
    constant ap_ST_st62_fsm_61 : STD_LOGIC_VECTOR (5 downto 0) := "111101";
    constant ap_ST_st63_fsm_62 : STD_LOGIC_VECTOR (5 downto 0) := "111110";
    constant ap_ST_st64_fsm_63 : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3F1B74EE : STD_LOGIC_VECTOR (31 downto 0) := "00111111000110110111010011101110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal cordic_ctab_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal cordic_ctab_ce0 : STD_LOGIC;
    signal cordic_ctab_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_148_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_169 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_175 : STD_LOGIC_VECTOR (31 downto 0);
    signal step_1_fu_201_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal step_1_reg_258 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_152_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_reg_269 : STD_LOGIC_VECTOR (31 downto 0);
    signal Y_load_1_reg_274 : STD_LOGIC_VECTOR (31 downto 0);
    signal current_load_reg_281 : STD_LOGIC_VECTOR (31 downto 0);
    signal X_load_1_reg_290 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cordic_ctab_addr_gep_fu_82_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_144_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal T_1_reg_306 : STD_LOGIC_VECTOR (31 downto 0);
    signal current_2_reg_311 : STD_LOGIC_VECTOR (31 downto 0);
    signal T_reg_321 : STD_LOGIC_VECTOR (31 downto 0);
    signal current_1_reg_326 : STD_LOGIC_VECTOR (31 downto 0);
    signal storemerge_reg_90 : STD_LOGIC_VECTOR (31 downto 0);
    signal storemerge1_reg_103 : STD_LOGIC_VECTOR (31 downto 0);
    signal storemerge2_reg_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal step_reg_129 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal current_fu_38 : STD_LOGIC_VECTOR (31 downto 0);
    signal X_fu_42 : STD_LOGIC_VECTOR (31 downto 0);
    signal Y_fu_46 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_144_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_144_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_148_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_148_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_152_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_155_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_155_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_cast_fu_207_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2_fu_211_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_144_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_144_ce : STD_LOGIC;
    signal grp_fu_148_ce : STD_LOGIC;
    signal grp_fu_152_ce : STD_LOGIC;
    signal grp_fu_155_ce : STD_LOGIC;
    signal grp_fu_155_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component cordic_faddfsub_32ns_32ns_32_5_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component cordic_fdiv_32ns_32ns_32_16 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component cordic_uitofp_32ns_32_6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component cordic_fcmp_32ns_32ns_1_3 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component cordic_cordic_ctab IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    cordic_ctab_U : component cordic_cordic_ctab
    generic map (
        DataWidth => 32,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => cordic_ctab_address0,
        ce0 => cordic_ctab_ce0,
        q0 => cordic_ctab_q0);

    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1 : component cordic_faddfsub_32ns_32ns_32_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_144_p0,
        din1 => grp_fu_144_p1,
        opcode => grp_fu_144_opcode,
        ce => grp_fu_144_ce,
        dout => grp_fu_144_p2);

    cordic_fdiv_32ns_32ns_32_16_U2 : component cordic_fdiv_32ns_32ns_32_16
    generic map (
        ID => 2,
        NUM_STAGE => 16,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_148_p0,
        din1 => grp_fu_148_p1,
        ce => grp_fu_148_ce,
        dout => grp_fu_148_p2);

    cordic_uitofp_32ns_32_6_U3 : component cordic_uitofp_32ns_32_6
    generic map (
        ID => 3,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_152_p0,
        ce => grp_fu_152_ce,
        dout => grp_fu_152_p1);

    cordic_fcmp_32ns_32ns_1_3_U4 : component cordic_fcmp_32ns_32ns_1_3
    generic map (
        ID => 4,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_155_p0,
        din1 => grp_fu_155_p1,
        ce => grp_fu_155_ce,
        opcode => grp_fu_155_opcode,
        dout => grp_fu_155_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- step_reg_129 assign process. --
    step_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st43_fsm_42 = ap_CS_fsm) or (ap_ST_st63_fsm_62 = ap_CS_fsm))) then 
                step_reg_129 <= step_1_reg_258;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                step_reg_129 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    -- storemerge1_reg_103 assign process. --
    storemerge1_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st43_fsm_42 = ap_CS_fsm)) then 
                storemerge1_reg_103 <= T_1_reg_306;
            elsif ((ap_ST_st63_fsm_62 = ap_CS_fsm)) then 
                storemerge1_reg_103 <= T_reg_321;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                storemerge1_reg_103 <= ap_const_lv32_3F1B74EE;
            end if; 
        end if;
    end process;

    -- storemerge2_reg_116 assign process. --
    storemerge2_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st43_fsm_42 = ap_CS_fsm)) then 
                storemerge2_reg_116 <= current_2_reg_311;
            elsif ((ap_ST_st63_fsm_62 = ap_CS_fsm)) then 
                storemerge2_reg_116 <= current_1_reg_326;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                storemerge2_reg_116 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- storemerge_reg_90 assign process. --
    storemerge_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st43_fsm_42 = ap_CS_fsm) or (ap_ST_st63_fsm_62 = ap_CS_fsm))) then 
                storemerge_reg_90 <= grp_fu_144_p2;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                storemerge_reg_90 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st28_fsm_27 = ap_CS_fsm)) then
                T_1_reg_306 <= grp_fu_144_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st48_fsm_47 = ap_CS_fsm)) then
                T_reg_321 <= grp_fu_144_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                X_fu_42 <= storemerge1_reg_103;
                Y_fu_46 <= storemerge_reg_90;
                current_fu_38 <= storemerge2_reg_116;
                step_1_reg_258 <= step_1_fu_201_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st23_fsm_22 = ap_CS_fsm)) then
                X_load_1_reg_290 <= X_fu_42;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st8_fsm_7 = ap_CS_fsm)) then
                Y_load_1_reg_274 <= Y_fu_46;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st49_fsm_48 = ap_CS_fsm)) then
                current_1_reg_326 <= grp_fu_144_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st29_fsm_28 = ap_CS_fsm)) then
                current_2_reg_311 <= grp_fu_144_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st21_fsm_20 = ap_CS_fsm)) then
                current_load_reg_281 <= current_fu_38;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st23_fsm_22 = ap_CS_fsm) or (ap_ST_st38_fsm_37 = ap_CS_fsm) or (ap_ST_st58_fsm_57 = ap_CS_fsm))) then
                reg_169 <= grp_fu_148_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st24_fsm_23 = ap_CS_fsm) or (ap_ST_st44_fsm_43 = ap_CS_fsm))) then
                reg_175 <= cordic_ctab_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st7_fsm_6 = ap_CS_fsm)) then
                tmp_3_reg_269 <= grp_fu_152_p1;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_195_p2, grp_fu_155_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond_fu_195_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st64_fsm_63;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                ap_NS_fsm <= ap_ST_st17_fsm_16;
            when ap_ST_st17_fsm_16 => 
                ap_NS_fsm <= ap_ST_st18_fsm_17;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st19_fsm_18;
            when ap_ST_st19_fsm_18 => 
                ap_NS_fsm <= ap_ST_st20_fsm_19;
            when ap_ST_st20_fsm_19 => 
                ap_NS_fsm <= ap_ST_st21_fsm_20;
            when ap_ST_st21_fsm_20 => 
                ap_NS_fsm <= ap_ST_st22_fsm_21;
            when ap_ST_st22_fsm_21 => 
                ap_NS_fsm <= ap_ST_st23_fsm_22;
            when ap_ST_st23_fsm_22 => 
                if (not((ap_const_lv1_0 = grp_fu_155_p2))) then
                    ap_NS_fsm <= ap_ST_st44_fsm_43;
                else
                    ap_NS_fsm <= ap_ST_st24_fsm_23;
                end if;
            when ap_ST_st24_fsm_23 => 
                ap_NS_fsm <= ap_ST_st25_fsm_24;
            when ap_ST_st25_fsm_24 => 
                ap_NS_fsm <= ap_ST_st26_fsm_25;
            when ap_ST_st26_fsm_25 => 
                ap_NS_fsm <= ap_ST_st27_fsm_26;
            when ap_ST_st27_fsm_26 => 
                ap_NS_fsm <= ap_ST_st28_fsm_27;
            when ap_ST_st28_fsm_27 => 
                ap_NS_fsm <= ap_ST_st29_fsm_28;
            when ap_ST_st29_fsm_28 => 
                ap_NS_fsm <= ap_ST_st30_fsm_29;
            when ap_ST_st30_fsm_29 => 
                ap_NS_fsm <= ap_ST_st31_fsm_30;
            when ap_ST_st31_fsm_30 => 
                ap_NS_fsm <= ap_ST_st32_fsm_31;
            when ap_ST_st32_fsm_31 => 
                ap_NS_fsm <= ap_ST_st33_fsm_32;
            when ap_ST_st33_fsm_32 => 
                ap_NS_fsm <= ap_ST_st34_fsm_33;
            when ap_ST_st34_fsm_33 => 
                ap_NS_fsm <= ap_ST_st35_fsm_34;
            when ap_ST_st35_fsm_34 => 
                ap_NS_fsm <= ap_ST_st36_fsm_35;
            when ap_ST_st36_fsm_35 => 
                ap_NS_fsm <= ap_ST_st37_fsm_36;
            when ap_ST_st37_fsm_36 => 
                ap_NS_fsm <= ap_ST_st38_fsm_37;
            when ap_ST_st38_fsm_37 => 
                ap_NS_fsm <= ap_ST_st39_fsm_38;
            when ap_ST_st39_fsm_38 => 
                ap_NS_fsm <= ap_ST_st40_fsm_39;
            when ap_ST_st40_fsm_39 => 
                ap_NS_fsm <= ap_ST_st41_fsm_40;
            when ap_ST_st41_fsm_40 => 
                ap_NS_fsm <= ap_ST_st42_fsm_41;
            when ap_ST_st42_fsm_41 => 
                ap_NS_fsm <= ap_ST_st43_fsm_42;
            when ap_ST_st43_fsm_42 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when ap_ST_st44_fsm_43 => 
                ap_NS_fsm <= ap_ST_st45_fsm_44;
            when ap_ST_st45_fsm_44 => 
                ap_NS_fsm <= ap_ST_st46_fsm_45;
            when ap_ST_st46_fsm_45 => 
                ap_NS_fsm <= ap_ST_st47_fsm_46;
            when ap_ST_st47_fsm_46 => 
                ap_NS_fsm <= ap_ST_st48_fsm_47;
            when ap_ST_st48_fsm_47 => 
                ap_NS_fsm <= ap_ST_st49_fsm_48;
            when ap_ST_st49_fsm_48 => 
                ap_NS_fsm <= ap_ST_st50_fsm_49;
            when ap_ST_st50_fsm_49 => 
                ap_NS_fsm <= ap_ST_st51_fsm_50;
            when ap_ST_st51_fsm_50 => 
                ap_NS_fsm <= ap_ST_st52_fsm_51;
            when ap_ST_st52_fsm_51 => 
                ap_NS_fsm <= ap_ST_st53_fsm_52;
            when ap_ST_st53_fsm_52 => 
                ap_NS_fsm <= ap_ST_st54_fsm_53;
            when ap_ST_st54_fsm_53 => 
                ap_NS_fsm <= ap_ST_st55_fsm_54;
            when ap_ST_st55_fsm_54 => 
                ap_NS_fsm <= ap_ST_st56_fsm_55;
            when ap_ST_st56_fsm_55 => 
                ap_NS_fsm <= ap_ST_st57_fsm_56;
            when ap_ST_st57_fsm_56 => 
                ap_NS_fsm <= ap_ST_st58_fsm_57;
            when ap_ST_st58_fsm_57 => 
                ap_NS_fsm <= ap_ST_st59_fsm_58;
            when ap_ST_st59_fsm_58 => 
                ap_NS_fsm <= ap_ST_st60_fsm_59;
            when ap_ST_st60_fsm_59 => 
                ap_NS_fsm <= ap_ST_st61_fsm_60;
            when ap_ST_st61_fsm_60 => 
                ap_NS_fsm <= ap_ST_st62_fsm_61;
            when ap_ST_st62_fsm_61 => 
                ap_NS_fsm <= ap_ST_st63_fsm_62;
            when ap_ST_st63_fsm_62 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when ap_ST_st64_fsm_63 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st64_fsm_63 = ap_CS_fsm)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st64_fsm_63 = ap_CS_fsm)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c <= X_fu_42;

    -- c_ap_vld assign process. --
    c_ap_vld_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st64_fsm_63 = ap_CS_fsm)) then 
            c_ap_vld <= ap_const_logic_1;
        else 
            c_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    cordic_ctab_addr_gep_fu_82_p3 <= tmp_1_fu_226_p1(6 - 1 downto 0);

    -- cordic_ctab_address0 assign process. --
    cordic_ctab_address0_assign_proc : process(ap_CS_fsm, grp_fu_155_p2, cordic_ctab_addr_gep_fu_82_p3, tmp_1_fu_226_p1)
    begin
        if ((ap_ST_st23_fsm_22 = ap_CS_fsm)) then
            if (not((ap_const_lv1_0 = grp_fu_155_p2))) then 
                cordic_ctab_address0 <= cordic_ctab_addr_gep_fu_82_p3;
            elsif ((ap_const_lv1_0 = grp_fu_155_p2)) then 
                cordic_ctab_address0 <= tmp_1_fu_226_p1(6 - 1 downto 0);
            else 
                cordic_ctab_address0 <= "XXXXXX";
            end if;
        else 
            cordic_ctab_address0 <= "XXXXXX";
        end if; 
    end process;


    -- cordic_ctab_ce0 assign process. --
    cordic_ctab_ce0_assign_proc : process(ap_CS_fsm, grp_fu_155_p2)
    begin
        if ((((ap_ST_st23_fsm_22 = ap_CS_fsm) and (ap_const_lv1_0 = grp_fu_155_p2)) or ((ap_ST_st23_fsm_22 = ap_CS_fsm) and not((ap_const_lv1_0 = grp_fu_155_p2))))) then 
            cordic_ctab_ce0 <= ap_const_logic_1;
        else 
            cordic_ctab_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_195_p2 <= "1" when (step_reg_129 = ap_const_lv3_5) else "0";
    grp_fu_144_ce <= ap_const_logic_1;

    -- grp_fu_144_opcode assign process. --
    grp_fu_144_opcode_assign_proc : process(ap_CS_fsm)
    begin
        if (((ap_ST_st44_fsm_43 = ap_CS_fsm) or (ap_ST_st25_fsm_24 = ap_CS_fsm) or (ap_ST_st39_fsm_38 = ap_CS_fsm))) then 
            grp_fu_144_opcode <= ap_const_lv2_1;
        elsif (((ap_ST_st24_fsm_23 = ap_CS_fsm) or (ap_ST_st45_fsm_44 = ap_CS_fsm) or (ap_ST_st59_fsm_58 = ap_CS_fsm))) then 
            grp_fu_144_opcode <= ap_const_lv2_0;
        else 
            grp_fu_144_opcode <= "XX";
        end if; 
    end process;


    -- grp_fu_144_p0 assign process. --
    grp_fu_144_p0_assign_proc : process(ap_CS_fsm, reg_169, Y_load_1_reg_274, current_load_reg_281, X_load_1_reg_290)
    begin
        if ((ap_ST_st59_fsm_58 = ap_CS_fsm)) then 
            grp_fu_144_p0 <= reg_169;
        elsif ((ap_ST_st39_fsm_38 = ap_CS_fsm)) then 
            grp_fu_144_p0 <= Y_load_1_reg_274;
        elsif (((ap_ST_st25_fsm_24 = ap_CS_fsm) or (ap_ST_st45_fsm_44 = ap_CS_fsm))) then 
            grp_fu_144_p0 <= current_load_reg_281;
        elsif (((ap_ST_st24_fsm_23 = ap_CS_fsm) or (ap_ST_st44_fsm_43 = ap_CS_fsm))) then 
            grp_fu_144_p0 <= X_load_1_reg_290;
        else 
            grp_fu_144_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- grp_fu_144_p1 assign process. --
    grp_fu_144_p1_assign_proc : process(ap_CS_fsm, reg_169, reg_175, Y_load_1_reg_274)
    begin
        if ((ap_ST_st59_fsm_58 = ap_CS_fsm)) then 
            grp_fu_144_p1 <= Y_load_1_reg_274;
        elsif (((ap_ST_st25_fsm_24 = ap_CS_fsm) or (ap_ST_st45_fsm_44 = ap_CS_fsm))) then 
            grp_fu_144_p1 <= reg_175;
        elsif (((ap_ST_st24_fsm_23 = ap_CS_fsm) or (ap_ST_st44_fsm_43 = ap_CS_fsm) or (ap_ST_st39_fsm_38 = ap_CS_fsm))) then 
            grp_fu_144_p1 <= reg_169;
        else 
            grp_fu_144_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_148_ce <= ap_const_logic_1;

    -- grp_fu_148_p0 assign process. --
    grp_fu_148_p0_assign_proc : process(ap_CS_fsm, grp_fu_155_p2, X_fu_42, Y_fu_46)
    begin
        if ((((ap_ST_st23_fsm_22 = ap_CS_fsm) and (ap_const_lv1_0 = grp_fu_155_p2)) or ((ap_ST_st23_fsm_22 = ap_CS_fsm) and not((ap_const_lv1_0 = grp_fu_155_p2))))) then 
            grp_fu_148_p0 <= X_fu_42;
        elsif ((ap_ST_st8_fsm_7 = ap_CS_fsm)) then 
            grp_fu_148_p0 <= Y_fu_46;
        else 
            grp_fu_148_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_148_p1 <= tmp_3_reg_269;
    grp_fu_152_ce <= ap_const_logic_1;
    grp_fu_152_p0 <= std_logic_vector(resize(unsigned(tmp_2_fu_211_p2),32));
    grp_fu_155_ce <= ap_const_logic_1;
    grp_fu_155_opcode <= ap_const_lv5_4;
    grp_fu_155_p0 <= current_fu_38;
    grp_fu_155_p1 <= theta;
    s <= Y_fu_46;

    -- s_ap_vld assign process. --
    s_ap_vld_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st64_fsm_63 = ap_CS_fsm)) then 
            s_ap_vld <= ap_const_logic_1;
        else 
            s_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    step_1_fu_201_p2 <= std_logic_vector(unsigned(step_reg_129) + unsigned(ap_const_lv3_1));
    tmp_1_cast_fu_207_p1 <= std_logic_vector(resize(unsigned(step_reg_129),5));
    tmp_1_fu_226_p1 <= std_logic_vector(resize(unsigned(step_reg_129),64));
    tmp_2_fu_211_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv5_1),to_integer(unsigned('0' & tmp_1_cast_fu_207_p1(5-1 downto 0)))));
end behav;
