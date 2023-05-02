library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MorseDecoder is
    port (
        signal_in: in std_logic_vector(3 downto 0);
        decoded_char: out character
    );
end entity MorseDecoder;

architecture Behavioral of MorseDecoder is
    function decode_morse(signal: std_logic_vector(3 downto 0)) return character is
    begin
        case signal is
            when "0000" => return 'E';
            when "0001" => return 'T';
            when "0010" => return 'I';
            when "0011" => return 'A';
            when "0100" => return 'N';
            when "0101" => return 'M';
            when "0110" => return 'S';
            when "0111" => return 'U';
            when "1000" => return 'R';
            when "1001" => return 'W';
            when "1010" => return 'D';
            when "1011" => return 'K';
            when "1100" => return 'G';
            when "1101" => return 'O';
            when "1110" => return 'H';
            when "1111" => return 'V';
            when others => return ' ';
        end case;
    end function;

begin
    decoded_char <= decode_morse(signal_in);
end architecture Behavioral;
