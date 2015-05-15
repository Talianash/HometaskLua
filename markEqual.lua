str1 = io.read()
assert(type(str1) == "string", "Enter the string please")
str2 = io.read()
assert(type(str2) == "string", "Enter the string please")
assert(string.len(str1) == string.len(str2), "Enter strings with the same length")
local function markEqual(a, b)
	local s
	s = ""
    for i = 1, string.len(a) do
	    if string.sub(a, i, i) == string.sub(b, i, i) then
		    s = s.."+"
		else
		    s = s.."-"
		end
	end
    return(s)
end
print(markEqual(str1, str2))
