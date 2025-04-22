library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_Controller is
    Port (
        vga_clk   : in  STD_LOGIC;
        Reset     : in  STD_LOGIC;
        hs        : out STD_LOGIC;
        vs        : out STD_LOGIC;
        v_blank   : out STD_LOGIC;
        h_blank   : out STD_LOGIC;
        DrawX     : out STD_LOGIC_VECTOR(9 downto 0);
        DrawY     : out STD_LOGIC_VECTOR(9 downto 0)
    );
end VGA_Controller;

architecture Behavioral of VGA_Controller is

    constant hpixels : unsigned(9 downto 0) := "1100011111";  -- 799
    constant vlines  : unsigned(9 downto 0) := "1000001100";  -- 524

    signal hc, vc : unsigned(9 downto 0) := (others => '0');

begin

    -- Horizontal and vertical counters
    process(vga_clk, Reset)
    begin
        if Reset = '1' then
            hc <= (others => '0');
            vc <= (others => '0');
        elsif rising_edge(vga_clk) then
            if hc = hpixels then
                hc <= (others => '0');
                if vc = vlines then
                    vc <= (others => '0');
                else
                    vc <= vc + 1;
                end if;
            else
                hc <= hc + 1;
            end if;
        end if;
    end process;

    DrawX <= std_logic_vector(hc);
    DrawY <= std_logic_vector(vc);

    -- Horizontal sync (active low during pixels 656 to 751)
    process(vga_clk, Reset)
    begin
        if Reset = '1' then
            hs <= '0';
        elsif rising_edge(vga_clk) then
            if (hc >= to_unsigned(656, 10)) and (hc < to_unsigned(752, 10)) then
                hs <= '0';
            else
                hs <= '1';
            end if;
        end if;
    end process;

    -- Vertical sync (active low during lines 490 and 491)
    process(vga_clk, Reset)
    begin
        if Reset = '1' then
            vs <= '0';
        elsif rising_edge(vga_clk) then
            if (vc = to_unsigned(490, 10)) or (vc = to_unsigned(491, 10)) then
                vs <= '0';
            else
                vs <= '1';
            end if;
        end if;
    end process;

    -- Blanking signals
    h_blank <= '1' when (hc >= to_unsigned(640, 10)) else '0';
    v_blank <= '1' when (vc >= to_unsigned(480, 10)) else '0';

end Behavioral;