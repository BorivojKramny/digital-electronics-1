----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2023 16:21:47
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_3bit_4to1 is
 port (
    b_i     : in    std_logic_vector(2 downto 0); --! Input data B[3:0]
    a_i     : in    std_logic_vector(2 downto 0);
    d_i     : in    std_logic_vector(2 downto 0);
    c_i     : in    std_logic_vector(2 downto 0);
    sel_i   : in    std_logic_vector(1 downto 0);
    y_o     : out   std_logic_vector(2 downto 0)                  
                     
   
  );
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin

with sel_i select
    y_o <= a_i when "000",  
           b_i when "001",
           c_i when "010",
           d_i when others;


end Behavioral;
