-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jun 12 17:45:57 2017
-- Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_reduced_logic_0_0_sim_netlist.vhdl
-- Design      : design_1_util_reduced_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic is
  signal Res_INST_0_i_1_n_0 : STD_LOGIC;
  signal Res_INST_0_i_2_n_0 : STD_LOGIC;
  signal Res_INST_0_i_3_n_0 : STD_LOGIC;
  signal Res_INST_0_i_4_n_0 : STD_LOGIC;
  signal Res_INST_0_i_5_n_0 : STD_LOGIC;
  signal Res_INST_0_i_6_n_0 : STD_LOGIC;
begin
Res_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Res_INST_0_i_1_n_0,
      I1 => Res_INST_0_i_2_n_0,
      I2 => Res_INST_0_i_3_n_0,
      I3 => Res_INST_0_i_4_n_0,
      I4 => Res_INST_0_i_5_n_0,
      I5 => Res_INST_0_i_6_n_0,
      O => Res
    );
Res_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op1(1),
      O => Res_INST_0_i_1_n_0
    );
Res_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(4),
      I1 => Op1(5),
      I2 => Op1(2),
      I3 => Op1(3),
      I4 => Op1(7),
      I5 => Op1(6),
      O => Res_INST_0_i_2_n_0
    );
Res_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(10),
      I1 => Op1(11),
      I2 => Op1(8),
      I3 => Op1(9),
      I4 => Op1(13),
      I5 => Op1(12),
      O => Res_INST_0_i_3_n_0
    );
Res_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(16),
      I1 => Op1(17),
      I2 => Op1(14),
      I3 => Op1(15),
      I4 => Op1(19),
      I5 => Op1(18),
      O => Res_INST_0_i_4_n_0
    );
Res_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(22),
      I1 => Op1(23),
      I2 => Op1(20),
      I3 => Op1(21),
      I4 => Op1(25),
      I5 => Op1(24),
      O => Res_INST_0_i_5_n_0
    );
Res_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(28),
      I1 => Op1(29),
      I2 => Op1(26),
      I3 => Op1(27),
      I4 => Op1(31),
      I5 => Op1(30),
      O => Res_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_util_reduced_logic_0_0,util_reduced_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_reduced_logic,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic
     port map (
      Op1(31 downto 0) => Op1(31 downto 0),
      Res => Res
    );
end STRUCTURE;
