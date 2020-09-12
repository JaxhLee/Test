for word in string.gmatch("11#1333,2#12222,3#1111", "%d+%#%d+") do
	print(word)
	local iStart, iEnd = string.find(word, string.match(word, "%d+%#"))
	print(iStart, iEnd)
	print(string.match(word, "%d+"))
	print(string.match(word, "%d+", iEnd))
end