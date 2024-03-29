library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_ff_rst is
--  Port ( );
end tb_ff_rst;

architecture testbench of tb_ff_rst is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_rst        : std_logic;
    signal s_data       : std_logic;
    signal s_d_q        : std_logic;
    signal s_d_q_bar    : std_logic;
    signal s_t_q        : std_logic;
    signal s_t_q_bar    : std_logic;

begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
    uut_d_ff_rst : entity work.d_ff_rst
        port map(
            clk   => s_clk_100MHz,
            rst   => s_rst,
            d     => s_data,
            q     => s_d_q,
            q_bar => s_d_q_bar
        );
    uut_t_ff_rst : entity work.t_ff_rst
        port map(
            clk   => s_clk_100MHz,
            rst   => s_rst,
            t     => s_data,
            q     => s_t_q,
            q_bar => s_t_q_bar
        );

    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 500 ns loop -- 50 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process
    begin
        s_rst <= '0';
        -- ACTIVATE AND DEACTIVATE RESET HERE
         wait for 18 ns;
         s_rst <= '1';
         wait for 37 ns;
         s_rst <= '0';
        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started";
        s_data <='0'; wait for 13 ns;
        s_data <='1'; wait for 13 ns;
        s_data <='0'; wait for 13 ns;
        s_data <='1'; wait for 13 ns;
        s_data <='0'; wait for 63 ns;
        s_data <='1'; wait for 93 ns;
        s_data <='0'; wait for 53 ns;
        s_data <='1'; wait for 10 ns;
        s_data <='0'; wait for 3 ns;
        s_data <='1'; wait for 83 ns;
        
        report "Stimulus process finished";
        wait;
    end process p_stimulus;

end architecture testbench;
