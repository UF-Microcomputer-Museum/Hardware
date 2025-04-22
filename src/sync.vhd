library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Sync 2-bit
entity sync2 is
    Port (
        Clk  : in  STD_LOGIC;
        input : in  STD_LOGIC_VECTOR(1 downto 0);
        output : out STD_LOGIC_VECTOR(1 downto 0)
    );
end sync2;

architecture Behavioral of sync2 is
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            output <= input;
        end if;
    end process;
end Behavioral;

-- Sync 8-bit
entity sync8 is
    Port (
        Clk  : in  STD_LOGIC;
        input : in  STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(7 downto 0)
    );
end sync8;

architecture Behavioral of sync8 is
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            output <= input;
        end if;
    end process;
end Behavioral;

-- Sync 10-bit
entity sync10 is
    Port (
        Clk  : in  STD_LOGIC;
        input : in  STD_LOGIC_VECTOR(9 downto 0);
        output : out STD_LOGIC_VECTOR(9 downto 0)
    );
end sync10;

architecture Behavioral of sync10 is
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            output <= input;
        end if;
    end process;
end Behavioral;
