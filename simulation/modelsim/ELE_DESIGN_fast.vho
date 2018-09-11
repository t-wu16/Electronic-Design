-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "07/12/2018 11:48:54"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MotorTest IS
    PORT (
	pin1 : OUT std_logic;
	clk : IN std_logic;
	choose1 : IN std_logic;
	choose0 : IN std_logic;
	speed1 : IN std_logic;
	speed0 : IN std_logic;
	pin2 : OUT std_logic;
	pin_name1 : OUT std_logic;
	pin_name2 : OUT std_logic
	);
END MotorTest;

-- Design Ports Information
-- pin1	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin2	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name1	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- speed1	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- speed0	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- choose0	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- choose1	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MotorTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_choose1 : std_logic;
SIGNAL ww_choose0 : std_logic;
SIGNAL ww_speed1 : std_logic;
SIGNAL ww_speed0 : std_logic;
SIGNAL ww_pin2 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL \inst|clk_div_r~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|counter[1]~18_combout\ : std_logic;
SIGNAL \inst3|counter[3]~22_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][9]~0_combout\ : std_logic;
SIGNAL \inst3|PWM_L~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~0_combout\ : std_logic;
SIGNAL \inst|clk_div_r~0_combout\ : std_logic;
SIGNAL \inst|clk_div_r~regout\ : std_logic;
SIGNAL \inst|clk_div_r~clkctrl_outclk\ : std_logic;
SIGNAL \choose0~combout\ : std_logic;
SIGNAL \inst3|counter[0]~16_combout\ : std_logic;
SIGNAL \inst3|counter[12]~40_combout\ : std_logic;
SIGNAL \choose1~combout\ : std_logic;
SIGNAL \inst3|PWM_L~3_combout\ : std_logic;
SIGNAL \inst3|counter[10]~36_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|counter[8]~32_combout\ : std_logic;
SIGNAL \inst3|counter[6]~28_combout\ : std_logic;
SIGNAL \inst3|counter[5]~26_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \inst3|counter[0]~17\ : std_logic;
SIGNAL \inst3|counter[1]~19\ : std_logic;
SIGNAL \inst3|counter[2]~20_combout\ : std_logic;
SIGNAL \inst3|counter[2]~21\ : std_logic;
SIGNAL \inst3|counter[3]~23\ : std_logic;
SIGNAL \inst3|counter[4]~24_combout\ : std_logic;
SIGNAL \inst3|counter[4]~25\ : std_logic;
SIGNAL \inst3|counter[5]~27\ : std_logic;
SIGNAL \inst3|counter[6]~29\ : std_logic;
SIGNAL \inst3|counter[7]~30_combout\ : std_logic;
SIGNAL \inst3|counter[7]~31\ : std_logic;
SIGNAL \inst3|counter[8]~33\ : std_logic;
SIGNAL \inst3|counter[9]~34_combout\ : std_logic;
SIGNAL \inst3|counter[9]~35\ : std_logic;
SIGNAL \inst3|counter[10]~37\ : std_logic;
SIGNAL \inst3|counter[11]~38_combout\ : std_logic;
SIGNAL \inst3|counter[11]~39\ : std_logic;
SIGNAL \inst3|counter[12]~41\ : std_logic;
SIGNAL \inst3|counter[13]~42_combout\ : std_logic;
SIGNAL \inst3|counter[13]~43\ : std_logic;
SIGNAL \inst3|counter[14]~44_combout\ : std_logic;
SIGNAL \inst3|counter[14]~45\ : std_logic;
SIGNAL \inst3|counter[15]~46_combout\ : std_logic;
SIGNAL \inst3|PWM_L~0_combout\ : std_logic;
SIGNAL \speed1~combout\ : std_logic;
SIGNAL \speed0~combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_cout\ : std_logic;
SIGNAL \inst3|LessThan0~7_cout\ : std_logic;
SIGNAL \inst3|LessThan0~9_cout\ : std_logic;
SIGNAL \inst3|LessThan0~11_cout\ : std_logic;
SIGNAL \inst3|LessThan0~13_cout\ : std_logic;
SIGNAL \inst3|LessThan0~15_cout\ : std_logic;
SIGNAL \inst3|LessThan0~17_cout\ : std_logic;
SIGNAL \inst3|LessThan0~18_combout\ : std_logic;
SIGNAL \inst3|PWM_L~2_combout\ : std_logic;
SIGNAL \inst3|PWM_L~regout\ : std_logic;
SIGNAL \inst3|PWM_R~0_combout\ : std_logic;
SIGNAL \inst3|PWM_R~1_combout\ : std_logic;
SIGNAL \inst3|PWM_R~regout\ : std_logic;
SIGNAL \inst3|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(0 DOWNTO 0);

BEGIN

pin1 <= ww_pin1;
ww_clk <= clk;
ww_choose1 <= choose1;
ww_choose0 <= choose0;
ww_speed1 <= speed1;
ww_speed0 <= speed0;
pin2 <= ww_pin2;
pin_name1 <= ww_pin_name1;
pin_name2 <= ww_pin_name2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_div_r~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|clk_div_r~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X5_Y11_N7
\inst3|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[3]~22_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(3));

-- Location: LCFF_X4_Y11_N31
\inst3|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	sdata => \inst3|counter[1]~18_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	sload => VCC,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(1));

-- Location: LCCOMB_X5_Y11_N2
\inst3|counter[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[1]~18_combout\ = (\inst3|counter\(1) & (!\inst3|counter[0]~17\)) # (!\inst3|counter\(1) & ((\inst3|counter[0]~17\) # (GND)))
-- \inst3|counter[1]~19\ = CARRY((!\inst3|counter[0]~17\) # (!\inst3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(1),
	datad => VCC,
	cin => \inst3|counter[0]~17\,
	combout => \inst3|counter[1]~18_combout\,
	cout => \inst3|counter[1]~19\);

-- Location: LCCOMB_X5_Y11_N6
\inst3|counter[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[3]~22_combout\ = (\inst3|counter\(3) & (!\inst3|counter[2]~21\)) # (!\inst3|counter\(3) & ((\inst3|counter[2]~21\) # (GND)))
-- \inst3|counter[3]~23\ = CARRY((!\inst3|counter[2]~21\) # (!\inst3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datad => VCC,
	cin => \inst3|counter[2]~21\,
	combout => \inst3|counter[3]~22_combout\,
	cout => \inst3|counter[3]~23\);

-- Location: LCCOMB_X3_Y11_N14
\inst3|Mult0|mult_core|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|_~1_combout\ = (!\speed0~combout\ & \speed1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed0~combout\,
	datad => \speed1~combout\,
	combout => \inst3|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X4_Y11_N24
\inst3|Mult0|mult_core|romout[0][9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][9]~0_combout\ = (\speed0~combout\) # (\speed1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed0~combout\,
	datad => \speed1~combout\,
	combout => \inst3|Mult0|mult_core|romout[0][9]~0_combout\);

-- Location: LCCOMB_X4_Y11_N4
\inst3|PWM_L~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_L~1_combout\ = (\choose1~combout\ & (!\choose0~combout\ & \inst3|PWM_L~regout\)) # (!\choose1~combout\ & (\choose0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose1~combout\,
	datab => \choose0~combout\,
	datad => \inst3|PWM_L~regout\,
	combout => \inst3|PWM_L~1_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G6
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y7_N18
\inst|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~0_combout\ = !\inst|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	combout => \inst|cnt[0]~0_combout\);

-- Location: LCFF_X27_Y7_N19
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCCOMB_X27_Y7_N6
\inst|clk_div_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk_div_r~0_combout\ = \inst|clk_div_r~regout\ $ (\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_div_r~regout\,
	datad => \inst|cnt\(0),
	combout => \inst|clk_div_r~0_combout\);

-- Location: LCFF_X27_Y7_N7
\inst|clk_div_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|clk_div_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk_div_r~regout\);

-- Location: CLKCTRL_G5
\inst|clk_div_r~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_div_r~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_div_r~clkctrl_outclk\);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\choose0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_choose0,
	combout => \choose0~combout\);

-- Location: LCCOMB_X5_Y11_N0
\inst3|counter[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[0]~16_combout\ = \inst3|counter\(0) $ (VCC)
-- \inst3|counter[0]~17\ = CARRY(\inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(0),
	datad => VCC,
	combout => \inst3|counter[0]~16_combout\,
	cout => \inst3|counter[0]~17\);

-- Location: LCCOMB_X5_Y11_N24
\inst3|counter[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[12]~40_combout\ = (\inst3|counter\(12) & (\inst3|counter[11]~39\ $ (GND))) # (!\inst3|counter\(12) & (!\inst3|counter[11]~39\ & VCC))
-- \inst3|counter[12]~41\ = CARRY((\inst3|counter\(12) & !\inst3|counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(12),
	datad => VCC,
	cin => \inst3|counter[11]~39\,
	combout => \inst3|counter[12]~40_combout\,
	cout => \inst3|counter[12]~41\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\choose1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_choose1,
	combout => \choose1~combout\);

-- Location: LCCOMB_X2_Y11_N2
\inst3|PWM_L~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_L~3_combout\ = \choose0~combout\ $ (\choose1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \choose0~combout\,
	datad => \choose1~combout\,
	combout => \inst3|PWM_L~3_combout\);

-- Location: LCFF_X5_Y11_N25
\inst3|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[12]~40_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(12));

-- Location: LCCOMB_X5_Y11_N20
\inst3|counter[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[10]~36_combout\ = (\inst3|counter\(10) & (\inst3|counter[9]~35\ $ (GND))) # (!\inst3|counter\(10) & (!\inst3|counter[9]~35\ & VCC))
-- \inst3|counter[10]~37\ = CARRY((\inst3|counter\(10) & !\inst3|counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(10),
	datad => VCC,
	cin => \inst3|counter[9]~35\,
	combout => \inst3|counter[10]~36_combout\,
	cout => \inst3|counter[10]~37\);

-- Location: LCFF_X5_Y11_N21
\inst3|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[10]~36_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(10));

-- Location: LCCOMB_X6_Y11_N14
\inst3|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (!\inst3|counter\(11) & (!\inst3|counter\(12) & (!\inst3|counter\(10) & !\inst3|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(11),
	datab => \inst3|counter\(12),
	datac => \inst3|counter\(10),
	datad => \inst3|counter\(13),
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X5_Y11_N16
\inst3|counter[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[8]~32_combout\ = (\inst3|counter\(8) & (\inst3|counter[7]~31\ $ (GND))) # (!\inst3|counter\(8) & (!\inst3|counter[7]~31\ & VCC))
-- \inst3|counter[8]~33\ = CARRY((\inst3|counter\(8) & !\inst3|counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(8),
	datad => VCC,
	cin => \inst3|counter[7]~31\,
	combout => \inst3|counter[8]~32_combout\,
	cout => \inst3|counter[8]~33\);

-- Location: LCFF_X5_Y11_N17
\inst3|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[8]~32_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(8));

-- Location: LCCOMB_X5_Y11_N12
\inst3|counter[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[6]~28_combout\ = (\inst3|counter\(6) & (\inst3|counter[5]~27\ $ (GND))) # (!\inst3|counter\(6) & (!\inst3|counter[5]~27\ & VCC))
-- \inst3|counter[6]~29\ = CARRY((\inst3|counter\(6) & !\inst3|counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datad => VCC,
	cin => \inst3|counter[5]~27\,
	combout => \inst3|counter[6]~28_combout\,
	cout => \inst3|counter[6]~29\);

-- Location: LCFF_X5_Y11_N13
\inst3|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[6]~28_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(6));

-- Location: LCCOMB_X5_Y11_N10
\inst3|counter[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[5]~26_combout\ = (\inst3|counter\(5) & (!\inst3|counter[4]~25\)) # (!\inst3|counter\(5) & ((\inst3|counter[4]~25\) # (GND)))
-- \inst3|counter[5]~27\ = CARRY((!\inst3|counter[4]~25\) # (!\inst3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datad => VCC,
	cin => \inst3|counter[4]~25\,
	combout => \inst3|counter[5]~26_combout\,
	cout => \inst3|counter[5]~27\);

-- Location: LCFF_X5_Y11_N11
\inst3|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[5]~26_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(5));

-- Location: LCCOMB_X6_Y11_N0
\inst3|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (!\inst3|counter\(7) & (((!\inst3|counter\(4) & !\inst3|counter\(5))) # (!\inst3|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \inst3|counter\(4),
	datac => \inst3|counter\(6),
	datad => \inst3|counter\(5),
	combout => \inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst3|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~2_combout\ = (\inst3|counter\(9) & (\inst3|counter\(8) & !\inst3|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(9),
	datac => \inst3|counter\(8),
	datad => \inst3|LessThan1~1_combout\,
	combout => \inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y11_N16
\inst3|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_combout\ = (\inst3|counter\(15) & (\inst3|counter\(14) & ((\inst3|LessThan1~2_combout\) # (!\inst3|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(15),
	datab => \inst3|counter\(14),
	datac => \inst3|LessThan1~0_combout\,
	datad => \inst3|LessThan1~2_combout\,
	combout => \inst3|LessThan1~3_combout\);

-- Location: LCFF_X4_Y11_N5
\inst3|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	sdata => \inst3|counter[0]~16_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	sload => VCC,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(0));

-- Location: LCCOMB_X5_Y11_N4
\inst3|counter[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[2]~20_combout\ = (\inst3|counter\(2) & (\inst3|counter[1]~19\ $ (GND))) # (!\inst3|counter\(2) & (!\inst3|counter[1]~19\ & VCC))
-- \inst3|counter[2]~21\ = CARRY((\inst3|counter\(2) & !\inst3|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(2),
	datad => VCC,
	cin => \inst3|counter[1]~19\,
	combout => \inst3|counter[2]~20_combout\,
	cout => \inst3|counter[2]~21\);

-- Location: LCFF_X4_Y11_N25
\inst3|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	sdata => \inst3|counter[2]~20_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	sload => VCC,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(2));

-- Location: LCCOMB_X5_Y11_N8
\inst3|counter[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[4]~24_combout\ = (\inst3|counter\(4) & (\inst3|counter[3]~23\ $ (GND))) # (!\inst3|counter\(4) & (!\inst3|counter[3]~23\ & VCC))
-- \inst3|counter[4]~25\ = CARRY((\inst3|counter\(4) & !\inst3|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(4),
	datad => VCC,
	cin => \inst3|counter[3]~23\,
	combout => \inst3|counter[4]~24_combout\,
	cout => \inst3|counter[4]~25\);

-- Location: LCFF_X5_Y11_N9
\inst3|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[4]~24_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(4));

-- Location: LCCOMB_X5_Y11_N14
\inst3|counter[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[7]~30_combout\ = (\inst3|counter\(7) & (!\inst3|counter[6]~29\)) # (!\inst3|counter\(7) & ((\inst3|counter[6]~29\) # (GND)))
-- \inst3|counter[7]~31\ = CARRY((!\inst3|counter[6]~29\) # (!\inst3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(7),
	datad => VCC,
	cin => \inst3|counter[6]~29\,
	combout => \inst3|counter[7]~30_combout\,
	cout => \inst3|counter[7]~31\);

-- Location: LCFF_X5_Y11_N15
\inst3|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[7]~30_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(7));

-- Location: LCCOMB_X5_Y11_N18
\inst3|counter[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[9]~34_combout\ = (\inst3|counter\(9) & (!\inst3|counter[8]~33\)) # (!\inst3|counter\(9) & ((\inst3|counter[8]~33\) # (GND)))
-- \inst3|counter[9]~35\ = CARRY((!\inst3|counter[8]~33\) # (!\inst3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(9),
	datad => VCC,
	cin => \inst3|counter[8]~33\,
	combout => \inst3|counter[9]~34_combout\,
	cout => \inst3|counter[9]~35\);

-- Location: LCFF_X5_Y11_N19
\inst3|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[9]~34_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(9));

-- Location: LCCOMB_X5_Y11_N22
\inst3|counter[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[11]~38_combout\ = (\inst3|counter\(11) & (!\inst3|counter[10]~37\)) # (!\inst3|counter\(11) & ((\inst3|counter[10]~37\) # (GND)))
-- \inst3|counter[11]~39\ = CARRY((!\inst3|counter[10]~37\) # (!\inst3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(11),
	datad => VCC,
	cin => \inst3|counter[10]~37\,
	combout => \inst3|counter[11]~38_combout\,
	cout => \inst3|counter[11]~39\);

-- Location: LCFF_X5_Y11_N23
\inst3|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[11]~38_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(11));

-- Location: LCCOMB_X5_Y11_N26
\inst3|counter[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[13]~42_combout\ = (\inst3|counter\(13) & (!\inst3|counter[12]~41\)) # (!\inst3|counter\(13) & ((\inst3|counter[12]~41\) # (GND)))
-- \inst3|counter[13]~43\ = CARRY((!\inst3|counter[12]~41\) # (!\inst3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(13),
	datad => VCC,
	cin => \inst3|counter[12]~41\,
	combout => \inst3|counter[13]~42_combout\,
	cout => \inst3|counter[13]~43\);

-- Location: LCFF_X5_Y11_N27
\inst3|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[13]~42_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(13));

-- Location: LCCOMB_X5_Y11_N28
\inst3|counter[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[14]~44_combout\ = (\inst3|counter\(14) & (\inst3|counter[13]~43\ $ (GND))) # (!\inst3|counter\(14) & (!\inst3|counter[13]~43\ & VCC))
-- \inst3|counter[14]~45\ = CARRY((\inst3|counter\(14) & !\inst3|counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(14),
	datad => VCC,
	cin => \inst3|counter[13]~43\,
	combout => \inst3|counter[14]~44_combout\,
	cout => \inst3|counter[14]~45\);

-- Location: LCFF_X5_Y11_N29
\inst3|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[14]~44_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(14));

-- Location: LCCOMB_X5_Y11_N30
\inst3|counter[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|counter[15]~46_combout\ = \inst3|counter[14]~45\ $ (\inst3|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|counter\(15),
	cin => \inst3|counter[14]~45\,
	combout => \inst3|counter[15]~46_combout\);

-- Location: LCFF_X5_Y11_N31
\inst3|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|counter[15]~46_combout\,
	sclr => \inst3|LessThan1~3_combout\,
	ena => \inst3|PWM_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|counter\(15));

-- Location: LCCOMB_X6_Y11_N12
\inst3|PWM_L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_L~0_combout\ = (!\inst3|counter\(15) & !\inst3|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|counter\(15),
	datad => \inst3|counter\(14),
	combout => \inst3|PWM_L~0_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\speed1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_speed1,
	combout => \speed1~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\speed0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_speed0,
	combout => \speed0~combout\);

-- Location: LCCOMB_X3_Y11_N28
\inst3|Mult0|mult_core|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|_~0_combout\ = (\speed0~combout\ & \speed1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed0~combout\,
	datad => \speed1~combout\,
	combout => \inst3|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X3_Y11_N16
\inst3|Mult0|mult_core|romout[0][8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][8]~1_combout\ = \speed0~combout\ $ (\speed1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed0~combout\,
	datad => \speed1~combout\,
	combout => \inst3|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X4_Y11_N6
\inst3|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|counter\(1)) # ((\inst3|counter\(0)) # (\inst3|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(1),
	datac => \inst3|counter\(0),
	datad => \inst3|counter\(2),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y11_N0
\inst3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|counter\(3) & ((\inst3|LessThan0~0_combout\) # (!\speed0~combout\))) # (!\inst3|counter\(3) & (!\speed0~combout\ & \inst3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datab => \speed0~combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X4_Y11_N30
\inst3|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\speed1~combout\ & (\inst3|counter\(4) & \inst3|LessThan0~1_combout\)) # (!\speed1~combout\ & ((\inst3|counter\(4)) # (\inst3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed1~combout\,
	datab => \inst3|counter\(4),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y11_N26
\inst3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|counter\(6)) # ((\inst3|counter\(5)) # (\inst3|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(6),
	datac => \inst3|counter\(5),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X4_Y11_N8
\inst3|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_cout\ = CARRY(\inst3|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LessThan0~3_combout\,
	datad => VCC,
	cout => \inst3|LessThan0~5_cout\);

-- Location: LCCOMB_X4_Y11_N10
\inst3|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_cout\ = CARRY((\inst3|counter\(7) & (\speed0~combout\ & !\inst3|LessThan0~5_cout\)) # (!\inst3|counter\(7) & ((\speed0~combout\) # (!\inst3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \speed0~combout\,
	datad => VCC,
	cin => \inst3|LessThan0~5_cout\,
	cout => \inst3|LessThan0~7_cout\);

-- Location: LCCOMB_X4_Y11_N12
\inst3|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~9_cout\ = CARRY((\inst3|counter\(8) & ((!\inst3|LessThan0~7_cout\) # (!\inst3|Mult0|mult_core|romout[0][8]~1_combout\))) # (!\inst3|counter\(8) & (!\inst3|Mult0|mult_core|romout[0][8]~1_combout\ & !\inst3|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(8),
	datab => \inst3|Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \inst3|LessThan0~7_cout\,
	cout => \inst3|LessThan0~9_cout\);

-- Location: LCCOMB_X4_Y11_N14
\inst3|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~11_cout\ = CARRY((\inst3|Mult0|mult_core|romout[0][9]~0_combout\ & ((!\inst3|LessThan0~9_cout\) # (!\inst3|counter\(9)))) # (!\inst3|Mult0|mult_core|romout[0][9]~0_combout\ & (!\inst3|counter\(9) & !\inst3|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][9]~0_combout\,
	datab => \inst3|counter\(9),
	datad => VCC,
	cin => \inst3|LessThan0~9_cout\,
	cout => \inst3|LessThan0~11_cout\);

-- Location: LCCOMB_X4_Y11_N16
\inst3|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~13_cout\ = CARRY((\inst3|Mult0|mult_core|_~1_combout\ & (\inst3|counter\(10) & !\inst3|LessThan0~11_cout\)) # (!\inst3|Mult0|mult_core|_~1_combout\ & ((\inst3|counter\(10)) # (!\inst3|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~1_combout\,
	datab => \inst3|counter\(10),
	datad => VCC,
	cin => \inst3|LessThan0~11_cout\,
	cout => \inst3|LessThan0~13_cout\);

-- Location: LCCOMB_X4_Y11_N18
\inst3|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~15_cout\ = CARRY((\inst3|counter\(11) & (\inst3|Mult0|mult_core|_~0_combout\ & !\inst3|LessThan0~13_cout\)) # (!\inst3|counter\(11) & ((\inst3|Mult0|mult_core|_~0_combout\) # (!\inst3|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(11),
	datab => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|LessThan0~13_cout\,
	cout => \inst3|LessThan0~15_cout\);

-- Location: LCCOMB_X4_Y11_N20
\inst3|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~17_cout\ = CARRY((\inst3|counter\(12) & ((!\inst3|LessThan0~15_cout\) # (!\speed0~combout\))) # (!\inst3|counter\(12) & (!\speed0~combout\ & !\inst3|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(12),
	datab => \speed0~combout\,
	datad => VCC,
	cin => \inst3|LessThan0~15_cout\,
	cout => \inst3|LessThan0~17_cout\);

-- Location: LCCOMB_X4_Y11_N22
\inst3|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~18_combout\ = (\inst3|counter\(13) & ((\inst3|LessThan0~17_cout\) # (!\speed1~combout\))) # (!\inst3|counter\(13) & (!\speed1~combout\ & \inst3|LessThan0~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(13),
	datab => \speed1~combout\,
	cin => \inst3|LessThan0~17_cout\,
	combout => \inst3|LessThan0~18_combout\);

-- Location: LCCOMB_X4_Y11_N2
\inst3|PWM_L~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_L~2_combout\ = (\inst3|PWM_L~1_combout\ & (((\inst3|PWM_L~0_combout\ & !\inst3|LessThan0~18_combout\)) # (!\choose0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PWM_L~1_combout\,
	datab => \choose0~combout\,
	datac => \inst3|PWM_L~0_combout\,
	datad => \inst3|LessThan0~18_combout\,
	combout => \inst3|PWM_L~2_combout\);

-- Location: LCFF_X4_Y11_N3
\inst3|PWM_L\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|PWM_L~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PWM_L~regout\);

-- Location: LCCOMB_X2_Y11_N16
\inst3|PWM_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_R~0_combout\ = (\choose1~combout\ & (!\choose0~combout\)) # (!\choose1~combout\ & (\choose0~combout\ & \inst3|PWM_R~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \choose1~combout\,
	datac => \choose0~combout\,
	datad => \inst3|PWM_R~regout\,
	combout => \inst3|PWM_R~0_combout\);

-- Location: LCCOMB_X4_Y11_N28
\inst3|PWM_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|PWM_R~1_combout\ = (\inst3|PWM_R~0_combout\ & (((\inst3|PWM_L~0_combout\ & !\inst3|LessThan0~18_combout\)) # (!\choose1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \choose1~combout\,
	datab => \inst3|PWM_L~0_combout\,
	datac => \inst3|PWM_R~0_combout\,
	datad => \inst3|LessThan0~18_combout\,
	combout => \inst3|PWM_R~1_combout\);

-- Location: LCFF_X4_Y11_N29
\inst3|PWM_R\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_div_r~clkctrl_outclk\,
	datain => \inst3|PWM_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PWM_R~regout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|PWM_L~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin1);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|PWM_R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin2);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \speed1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \speed0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2);
END structure;


