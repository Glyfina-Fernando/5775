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
    theta_V : IN STD_LOGIC_VECTOR (63 downto 0);
    s_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    s_V_ap_vld : OUT STD_LOGIC;
    c_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    c_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cordic is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "cordic,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.344000,HLS_SYN_LAT=61,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_26DD3B6A2ABDA4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000100110110111010011101101101010001010101011110110100100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1E : STD_LOGIC_VECTOR (4 downto 0) := "11110";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal angles_V_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal angles_V_ce0 : STD_LOGIC;
    signal angles_V_q0 : STD_LOGIC_VECTOR (53 downto 0);
    signal step_fu_119_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal step_reg_215 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2_fu_125_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_reg_220 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_2_fu_147_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_2_reg_226 : STD_LOGIC_VECTOR (63 downto 0);
    signal X_V_2_fu_159_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal X_V_2_reg_237 : STD_LOGIC_VECTOR (63 downto 0);
    signal current_V_fu_194_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal Y_V_fu_201_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_4_reg_64 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_3_reg_76 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_reg_89 : STD_LOGIC_VECTOR (63 downto 0);
    signal sh_assign_reg_101 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_fu_130_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_1_fu_135_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal T_V_fu_141_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal T_V_1_fu_153_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_5_cast_fu_167_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_2_fu_177_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_8_fu_171_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_6_fu_182_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_3_pn_fu_188_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component cordic_angles_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;



begin
    angles_V_U : component cordic_angles_V
    generic map (
        DataWidth => 54,
        AddressRange => 20,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => angles_V_address0,
        ce0 => angles_V_ce0,
        q0 => angles_V_q0);





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


    -- p_Val2_3_reg_76 assign process. --
    p_Val2_3_reg_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                p_Val2_3_reg_76 <= Y_V_fu_201_p2;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                p_Val2_3_reg_76 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    -- p_Val2_4_reg_64 assign process. --
    p_Val2_4_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                p_Val2_4_reg_64 <= current_V_fu_194_p3;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                p_Val2_4_reg_64 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    -- p_Val2_s_reg_89 assign process. --
    p_Val2_s_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                p_Val2_s_reg_89 <= X_V_2_reg_237;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                p_Val2_s_reg_89 <= ap_const_lv64_26DD3B6A2ABDA4;
            end if; 
        end if;
    end process;

    -- sh_assign_reg_101 assign process. --
    sh_assign_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                sh_assign_reg_101 <= step_reg_215;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                sh_assign_reg_101 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (exitcond_fu_113_p2 = ap_const_lv1_0))) then
                X_V_2_reg_237 <= X_V_2_fu_159_p3;
                p_Val2_2_reg_226 <= p_Val2_2_fu_147_p2;
                tmp_2_reg_220 <= tmp_2_fu_125_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                step_reg_215 <= step_fu_119_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_113_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond_fu_113_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    T_V_1_fu_153_p2 <= std_logic_vector(unsigned(p_Val2_1_fu_135_p2) + unsigned(p_Val2_s_reg_89));
    T_V_fu_141_p2 <= std_logic_vector(unsigned(p_Val2_s_reg_89) - unsigned(p_Val2_1_fu_135_p2));
    X_V_2_fu_159_p3 <= 
        T_V_fu_141_p2 when (tmp_2_fu_125_p2(0) = '1') else 
        T_V_1_fu_153_p2;
    Y_V_fu_201_p2 <= std_logic_vector(unsigned(p_Val2_3_pn_fu_188_p3) + unsigned(p_Val2_3_reg_76));
    angles_V_address0 <= tmp_3_fu_130_p1(5 - 1 downto 0);

    -- angles_V_ce0 assign process. --
    angles_V_ce0_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then 
            angles_V_ce0 <= ap_const_logic_1;
        else 
            angles_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm, exitcond_fu_113_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((exitcond_fu_113_p2 = ap_const_lv1_0)))) then 
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
    ap_ready_assign_proc : process(ap_CS_fsm, exitcond_fu_113_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((exitcond_fu_113_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_V <= p_Val2_s_reg_89;

    -- c_V_ap_vld assign process. --
    c_V_ap_vld_assign_proc : process(ap_CS_fsm, exitcond_fu_113_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((exitcond_fu_113_p2 = ap_const_lv1_0)))) then 
            c_V_ap_vld <= ap_const_logic_1;
        else 
            c_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    current_V_fu_194_p3 <= 
        p_Val2_8_fu_171_p2 when (tmp_2_reg_220(0) = '1') else 
        p_Val2_6_fu_182_p2;
    exitcond_fu_113_p2 <= "1" when (sh_assign_reg_101 = ap_const_lv5_1E) else "0";
    p_Val2_1_fu_135_p2 <= std_logic_vector(shift_right(unsigned(p_Val2_3_reg_76),to_integer(unsigned('0' & tmp_3_fu_130_p1(31-1 downto 0)))));
    p_Val2_2_fu_147_p2 <= std_logic_vector(shift_right(unsigned(p_Val2_s_reg_89),to_integer(unsigned('0' & tmp_3_fu_130_p1(31-1 downto 0)))));
    p_Val2_3_pn_fu_188_p3 <= 
        p_Val2_2_reg_226 when (tmp_2_reg_220(0) = '1') else 
        p_Val2_s_2_fu_177_p2;
    p_Val2_5_cast_fu_167_p1 <= std_logic_vector(resize(unsigned(angles_V_q0),64));
    p_Val2_6_fu_182_p2 <= std_logic_vector(unsigned(p_Val2_4_reg_64) - unsigned(p_Val2_5_cast_fu_167_p1));
    p_Val2_8_fu_171_p2 <= std_logic_vector(unsigned(p_Val2_5_cast_fu_167_p1) + unsigned(p_Val2_4_reg_64));
    p_Val2_s_2_fu_177_p2 <= std_logic_vector(unsigned(ap_const_lv64_0) - unsigned(p_Val2_2_reg_226));
    s_V <= p_Val2_3_reg_76;

    -- s_V_ap_vld assign process. --
    s_V_ap_vld_assign_proc : process(ap_CS_fsm, exitcond_fu_113_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((exitcond_fu_113_p2 = ap_const_lv1_0)))) then 
            s_V_ap_vld <= ap_const_logic_1;
        else 
            s_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    step_fu_119_p2 <= std_logic_vector(unsigned(sh_assign_reg_101) + unsigned(ap_const_lv5_1));
    tmp_2_fu_125_p2 <= "1" when (unsigned(p_Val2_4_reg_64) < unsigned(theta_V)) else "0";
    tmp_3_fu_130_p1 <= std_logic_vector(resize(unsigned(sh_assign_reg_101),64));
end behav;
