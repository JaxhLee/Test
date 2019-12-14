-- require("lua/io")
local t = {2,1,3}
t[2] = nil
for k,v in pairs(t) do
	print(k,v)
end