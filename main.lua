-- local t = {}

-- t[3] = 1
-- t[1] = 2

-- print(pairs(t))

-- for k, v in pairs(t) do
-- 	print(k, v)
-- end

-- print(#t)

list = require("lua/list")
---@class list
local list = list:new()
-- list:push(1)
-- list:push(2)
-- list:push(3)

local node = list:find(list:tail())



for node, v in ilist(list) do
	print("-", v)

	if v == 2 then
		local next, next_value = list:next(node)
		while list:prev(node) do
			list:remove(list:prev(node))
		end
	end


	-- local next, v = list:next(node)
	-- list:remove(node)
	-- print("+", v)
end

print(list:head())
print(list:shift())
print(list:head())