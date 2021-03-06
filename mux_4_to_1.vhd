library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_4_to_1 is
    port(
        i_select : in std_logic_vector(1 downto 0);
        i_inp1: in std_logic_vector(7 downto 0);
        i_inp2: in std_logic_vector(7 downto 0);
        i_inp3: in std_logic_vector(7 downto 0);
        i_inp4: in std_logic_vector(7 downto 0);

        o_data: out std_logic_vector(7 downto 0)
    );
end mux_4_to_1;

architecture rtl of mux_4_to_1 is
begin
    o_data <= i_inp1 when i_select = "00" else
              i_inp2 when i_select = "01" else
              i_inp3 when i_select = "10" else
              i_inp4;
end rtl;