library ieee;
use ieee.std_logic_1164.all;

entity morse_code is
    port (
        clk  : in  std_logic;
        sw   : in  std_logic_vector(3 downto 0);
        led  : out std_logic_vector(7 downto 0)
    );
end entity morse_code;

architecture Behavioral of morse_code is
    signal dot_length  : integer range 1 to 10000000 := 100000;
    signal dash_length : integer range 1 to 10000000 := 300000;

begin
    process (clk)
    begin
        if rising_edge(clk) then
            if sw = "0000" then
                led <= "00000000";  -- Všechny LED vypnuty
            elsif sw = "0001" then
                wait for dot_length;
                led <= "00000001";  -- LED 0 zapnuta (tečka)
                wait for dot_length;
                led <= "00000000";  -- LED 0 vypnuta
                wait for dot_length;
            elsif sw = "0010" then
                wait for dot_length;
                led <= "00000010";  -- LED 1 zapnuta (tečka)
                wait for dot_length;
                led <= "00000000";  -- LED 1 vypnuta
                wait for dot_length;
            elsif sw = "0011" then
                wait for dash_length;
                led <= "00000011";  -- LED 0 a 1 zapnuty (pomlka)
                wait for dash_length;
                led <= "00000000";  -- LED 0 a 1 vypnuty
                wait for dot_length;
            elsif sw = "0100" then
                -- Morseový kód pro znak 'A'
                wait for dot_length;
                led <= "00000100";  -- LED 2 zapnuta (tečka)
                wait for dash_length;
                led <= "00000000";  -- LED 2 vypnuta
                wait for dot_length;
            elsif sw = "0101" then
                -- Morseový kód pro znak 'B'
                wait for dash_length;
                led <= "00000101";  -- LED 0 a 2 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0 a 2 vypnuty
                wait for dot_length;
            elsif sw = "0110" then
                -- Morseový kód pro znak 'C'
                wait for dash_length;
                led <= "00000110";  -- LED 1 a 2 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1 a 2 vypnuty
                wait for dot_length;
            elsif sw = "0111" then
                -- Morseový kód pro znak 'D'
                wait for dash_length;
                led <= "00000111";  -- LED 0, 1 a 2 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1 a 2 vypnuty
                wait for dot_length;
            elsif sw = "1000" then
                -- Morseový kód pro znak 'E'
                wait for dot_length;
                led <= "00001000";  -- LED 3 zapnuta (tečka)
                wait for dot_length;
                led <= "00000000";  -- LED 3 vypnuta
                wait for dot_length;
            elsif sw = "1001" then
                -- Morseový kód pro znak 'F'
                wait for dot_length;
                led <= "00001001";  -- LED 0 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1010" then
                -- Morseový kód pro znak 'G'
                wait for dash_length;
                led <= "00001010";  -- LED 1 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1011" then
                -- Morseový kód pro znak 'H'
                wait for dash_length;
                led <= "00001011";  -- LED 0, 1 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1100" then
                -- Morseový kód pro znak 'I'
                wait for dot_length;
                led <= "00001100";  -- LED 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1101" then
                -- Morseový kód pro znak 'J'
                wait for dot_length;
                led <= "00001101";  -- LED 0, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1110" then
                -- Morseový kód pro znak 'K'
                wait for dash_length;
                led <= "00001110";  -- LED 1, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1111" then
                -- Morseový kód pro znak 'L'
                wait for dash_length;
                led <= "00001111";  -- LED 0, 1, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1, 2 a 3 vypnuty
                wait for dot_length;
                       elsif sw = "1000" then
                -- Morseový kód pro znak 'E'
                wait for dot_length;
                led <= "00001000";  -- LED 3 zapnuta (tečka)
                wait for dot_length;
                led <= "00000000";  -- LED 3 vypnuta
                wait for dot_length;
            elsif sw = "1001" then
                -- Morseový kód pro znak 'F'
                wait for dot_length;
                led <= "00001001";  -- LED 0 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1010" then
                -- Morseový kód pro znak 'G'
                wait for dash_length;
                led <= "00001010";  -- LED 1 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1011" then
                -- Morseový kód pro znak 'H'
                wait for dash_length;
                led <= "00001011";  -- LED 0, 1 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1100" then
                -- Morseový kód pro znak 'I'
                wait for dot_length;
                led <= "00001100";  -- LED 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1101" then
                -- Morseový kód pro znak 'J'
                wait for dot_length;
                led <= "00001101";  -- LED 0, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1110" then
                -- Morseový kód pro znak 'K'
                wait for dash_length;
                led <= "00001110";  -- LED 1, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 2 a 3 vypnuty
                wait for dot_length;
            elsif sw = "1111" then
                -- Morseový kód pro znak 'L'
                wait for dash_length;
                led <= "00001111";  -- LED 0, 1, 2 a 3 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1, 2 a 3 vypnuty
                wait for dot_length;
                       elsif sw = "0000" then
                -- Morseový kód pro znak ' '
                wait for dash_length;
                led <= "00010000";  -- LED 4 zapnuta (pauza)
                wait for dot_length;
                led <= "00000000";  -- LED 4 vypnuta
                wait for dot_length;
            elsif sw = "0001" then
                -- Morseový kód pro znak 'M'
                wait for dash_length;
                led <= "00010001";  -- LED 0 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0010" then
                -- Morseový kód pro znak 'N'
                wait for dash_length;
                led <= "00010010";  -- LED 1 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0011" then
                -- Morseový kód pro znak 'O'
                wait for dash_length;
                led <= "00010011";  -- LED 0, 1 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0100" then
                -- Morseový kód pro znak 'P'
                wait for dash_length;
                led <= "00010100";  -- LED 2 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 2 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0101" then
                -- Morseový kód pro znak 'Q'
                wait for dash_length;
                led <= "00010101";  -- LED 0, 2 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 2 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0110" then
                -- Morseový kód pro znak 'R'
                wait for dash_length;
                led <= "00010110";  -- LED 1, 2 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 2 a 4 vypnuty
                wait for dot_length;
            elsif sw = "0111" then
                -- Morseový kód pro znak 'S'
                wait for dash_length;
                led <= "00010111";  -- LED 0, 1, 2 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1, 2 a 4 vypnuty
                wait for dot_length;
            elsif
            elsif sw = "1000" then
                -- Morseový kód pro znak 'T'
                wait for dash_length;
                led <= "00011000";  -- LED 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1001" then
                -- Morseový kód pro znak 'U'
                wait for dash_length;
                led <= "00011001";  -- LED 0, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1010" then
                -- Morseový kód pro znak 'V'
                wait for dash_length;
                led <= "00011010";  -- LED 1, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1011" then
                -- Morseový kód pro znak 'W'
                wait for dash_length;
                led <= "00011011";  -- LED 0, 1, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 1, 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1100" then
                -- Morseový kód pro znak 'X'
                wait for dash_length;
                led <= "00011100";  -- LED 2, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 2, 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1101" then
                -- Morseový kód pro znak 'Y'
                wait for dash_length;
                led <= "00011101";  -- LED 0, 2, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 0, 2, 3 a 4 vypnuty
                wait for dot_length;
            elsif sw = "1110" then
                -- Morseový kód pro znak 'Z'
                wait for dash_length;
                led <= "00011110";  -- LED 1, 2, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 2, 3 a 4 vypnuty
                wait for dot_length;
            else
                led <= "11111111";  -- Všechny LED zapnuty (chyba)
                wait for dot_length;
                led <= "00000000";  -- Všechny LED vypnuty
                wait for dot_length;

            elsif sw = "1111" then
                -- Morseový kód pro znak 'Z'
                wait for dash_length;
                led <= "00011110";  -- LED 1, 2, 3 a 4 zapnuty (pomlka)
                wait for dot_length;
                led <= "00000000";  -- LED 1, 2, 3 a 4 vypnuty
                wait for dot_length;
            else
                led <= "11111111";  -- Všechny LED zapnuty (chyba)
                wait for dot_length;
                led <= "00000000";  -- Všechny LED vypnuty
                wait for dot_length;
            end if;
        end loop;
    end process;
end behavioral;

