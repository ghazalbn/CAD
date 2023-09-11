library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package ALU_utility_functions is
	function DIVIDE(x, y: INTEGER) return INTEGER;	
	function LOG(number: INTEGER) return INTEGER;
	function SQRT(number: INTEGER) return INTEGER;
	function POW(x, y: INTEGER) return INTEGER;
end ALU_utility_functions;

package body ALU_utility_functions is
function DIVIDE(x, y: INTEGER) return INTEGER is 
	variable result, tempX, tempY: INTEGER;
	begin
		result := 0;
		if x < 0 then
			tempX := -x;
		else
			tempX := x;
		end if;
		if y < 0 then
			tempY := -y;
		else
			tempY := y;
		end if;
		for i in 1 to 10 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 11 to 20 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 21 to 30 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 31 to 40 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 41 to 50 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 51 to 60 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 61 to 70 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 71 to 80 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 81 to 90 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 91 to 100 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 101 to 110 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 111 to 120 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		for i in 121 to 130 loop
			if tempX >= tempY then
				result := result + 1;
				tempX := tempX - tempY;
			end if;
		end loop;
		if x * y < 0 then
			return -result;
		else
			return result;
		end if;
	end;
	
	function LOG(number: INTEGER) return INTEGER is
	begin
		if number < 2 then
			return 0;
		elsif number < 4 then 
			return 1;
		elsif number < 8 then 
			return 2;
		elsif number < 16 then 
			return 3;
		elsif number < 32 then 
			return 4;
		elsif number < 64 then 
			return 5;
		elsif number < 128 then 
			return 6;
		elsif number < 256 then 
			return 7;
		else
			return 8;
		end if;
	end;

	function SQRT(number: INTEGER) return INTEGER is 
	variable root: INTEGER;
	begin
		root := 0;
		for i in 1 to 16 loop
			if root * root <= number then
				root := root + 1;
			end if;
		end loop;
		return root - 1;
	end;

	function POW(x, y: INTEGER) return INTEGER is 
	variable power: INTEGER;
	begin
		power := 1;
		for i in 1 to 16 loop
		if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 17 to 32 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 33 to 48 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 49 to 64 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 65 to 80 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 81 to 96 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 97 to 112 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		for i in 113 to 128 loop
			if i <= y then
				power := power * x;
			end if;
		end loop;
		return power;
	end;
 
end ALU_utility_functions;

