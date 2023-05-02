library ieee;
use ieee.std_logic_1164.all;

entity morse_code_tb is
end entity morse_code_tb;

architecture Behavioral of morse_code_tb is
    component morse_code is
        port (
            clk  : in  std_logic;
            sw   : in  std_logic_vector(3 downto 0);
            led  : out std_logic_vector(7 downto 0)
        );
    end component morse_code;

    signal clk_tb  : std_logic := '0';
    signal sw_tb   : std_logic_vector(3 downto 0) := "0000";
    signal led_tb  : std_logic_vector(7 downto 0);

begin
    uut: morse_code
        port map (
            clk  => clk_tb,
            sw   => sw_tb,
            led  => led_tb
        );

    process
    begin
        -- Generování hodinového signálu
        clk_tb <= '0';
        wait for 5 ns;
        clk_tb <= '1';
        wait for 5 ns;

        -- Testování jednotlivých Morseových znaků
        sw_tb <= "0001";
        wait for 1 ms;
        sw_tb <= "0010";
        wait for 1 ms;
        sw_tb <= "0011";
        wait for 1 ms;
        -- Pokračujte s dalšími testovacími případy pro různé Morseovy znaky

        wait;
    end process;

end architecture Behavioral;
