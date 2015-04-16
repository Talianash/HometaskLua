skips = function(b)
    newtab = {}
	for k = 1, #b do
	    newtab[k] = {}
	    for i = 1, math.floor((#b)/k) do
		    z = k*i
		    table.insert(newtab[k], b[z])
		end
	end
	return(newtab)
end
