library ieee;
use ieee.std_logic_1164.all;

entity Tflipflopusingvhdl is port (

clk : in std_logic;
reset : in std_logic;
t : in std_logic;
q : out std_logic);

end Tflipflopusingvhdl;

architecture behaviour of Tflipflopusingvhdl is 
signal q_reg  : std_logic;
signal q_next : std_logic;

begin 

-- D flipflop 
process(clk, reset) 
begin 
if (reset = '1') then 
q_reg <= '0';
elsif (clk'event and clk ='1') then
q_reg <= q_next;
end if ;
end process;

--next state logic
q_next <= q_reg when t='0' else
		(not q_reg);

--output logic
q <= q_reg;
end behaviour;