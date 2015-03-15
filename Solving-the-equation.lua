print("I can solve this equation: ax^2 + bx + c")
print("Enter the main coefficient")
a = io.read()
assert(tonumber(a), "You should enter the number")
print("Enter the second coefficient")
b = io.read()
assert(tonumber(b), "You should enter the number")
print("Enter the free term")
c = io.read()
assert(tonumber(c), "You should enter the number")
-------
function solvingeq(a , b, c)
	function Disc(a, b, c)
		D = b^2 - 4*a*c
		return D
	end
	D = Disc(a, b, c)
	if a == "0" then
		assert(b ~= "0", "You don't have anything to be solved")
		x  = (-c)/b
		return (x)
	else
	    if	D == 0 then
		  x = (-1)*b/(2*a)
		  return (x)
	    elseif D < 0 then
		  return (nil)
	    elseif D > 0 then
		   y=(-b + D^(1/2))/(2*a)
		   z=(-b - D^(1/2))/(2*a)
		   return y, z
     	end
	end
end
-------
print(solvingeq(a, b, c))
