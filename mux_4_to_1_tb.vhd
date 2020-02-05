
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_4_to_1_tb is
end mux_4_to_1_tb;

architecture behave of mux_4_to_1_tb is 
    signal r_Sel : std_logic_vector(1 downto 0) := "00";
    signal r_Inp1 : std_logic_vector(7 downto 0) := X"01";
    signal r_Inp2 : std_logic_vector(7 downto 0) := X"02";
    signal r_Inp3 : std_logic_vector(7 downto 0) := X"03";
    signal r_Inp4 : std_logic_vector(7 downto 0) := X"04";

    signal w_Data : std_logic_vector(7 downto 0);

begin
    UUT : entity work.mux_4_to_1
        port map (
            i_select  => r_Sel,
            i_inp1 => r_Inp1,
            i_inp2 => r_Inp2,
            i_inp3 => r_Inp3,
            i_inp4 => r_Inp4,

            o_data => w_Data 
        );

    process is
    begin
        r_Inp1 <= X"01";
        r_Inp2 <= X"02";
        r_Inp3 <= X"03";
        r_Inp4 <= X"04";

        r_Sel <= "00";
        wait for 10ns;
        r_Sel <= "01";
        wait for 10ns;
        r_Sel <= "10";
        wait for 10ns;
        r_Sel <= "11";
        wait for 10ns;
    end process;
end behave;