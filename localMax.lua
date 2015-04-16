localMax = function(a)
list = {}
    for k = 2, ((#a)-1) do
	    if a[k] > a[k-1] and a[k] > a[k+1] then
		    table.insert(list, a[k])
		end
	end
return(list)
end
