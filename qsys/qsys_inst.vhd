	component qsys is
		port (
			clk_clk                      : in    std_logic                     := 'X';             -- clk
			reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
			sdram_wire_addr              : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba                : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n             : out   std_logic;                                        -- cas_n
			sdram_wire_cke               : out   std_logic;                                        -- cke
			sdram_wire_cs_n              : out   std_logic;                                        -- cs_n
			sdram_wire_dq                : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm               : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_wire_ras_n             : out   std_logic;                                        -- ras_n
			sdram_wire_we_n              : out   std_logic;                                        -- we_n
			uart_external_connection_rxd : in    std_logic                     := 'X';             -- rxd
			uart_external_connection_txd : out   std_logic                                         -- txd
		);
	end component qsys;

	u0 : component qsys
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --                      clk.clk
			reset_reset_n                => CONNECTED_TO_reset_reset_n,                --                    reset.reset_n
			sdram_wire_addr              => CONNECTED_TO_sdram_wire_addr,              --               sdram_wire.addr
			sdram_wire_ba                => CONNECTED_TO_sdram_wire_ba,                --                         .ba
			sdram_wire_cas_n             => CONNECTED_TO_sdram_wire_cas_n,             --                         .cas_n
			sdram_wire_cke               => CONNECTED_TO_sdram_wire_cke,               --                         .cke
			sdram_wire_cs_n              => CONNECTED_TO_sdram_wire_cs_n,              --                         .cs_n
			sdram_wire_dq                => CONNECTED_TO_sdram_wire_dq,                --                         .dq
			sdram_wire_dqm               => CONNECTED_TO_sdram_wire_dqm,               --                         .dqm
			sdram_wire_ras_n             => CONNECTED_TO_sdram_wire_ras_n,             --                         .ras_n
			sdram_wire_we_n              => CONNECTED_TO_sdram_wire_we_n,              --                         .we_n
			uart_external_connection_rxd => CONNECTED_TO_uart_external_connection_rxd, -- uart_external_connection.rxd
			uart_external_connection_txd => CONNECTED_TO_uart_external_connection_txd  --                         .txd
		);
