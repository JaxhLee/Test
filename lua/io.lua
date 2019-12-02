function HandleModifierFunction()
	local source = io.open('dota/modifierfunction.txt', 'r')
	local new = io.open('dota/modifierfunction.lua', 'w')

	-- local str = 'MODIFIER_EVENT_ON_ABILITY_END_CHANNEL (168) OnAbilityEndChannel'
	-- for v in string.gmatch( str,'(%S+)' ) do
	-- 	print(v)
	-- end
	for line in source:lines() do
		if line == nil then
			break
		end

		local lines = {}
		for str in string.gmatch(line,'(%S+)') do
			table.insert(lines, str)
		end
		local line1 = string.format('--- %s%s\n', lines[2], lines[3])
		local line2 = string.format( "%s\n", lines[1])

		new:write(line1)
		new:write(line2)
	end
	new:close()
	source:close()
end

function HandleModifierState()
	local source = io.open('dota/modifierstate.txt', 'r')
	local new = io.open('dota/modifierstate.lua', 'w')

	for line in source:lines() do
		if line == nil then
			break
		end

		local lines = {}
		for str in string.gmatch(line,'(%S+)') do
			table.insert(lines, str)
		end
		local line1 = string.format('--- %s\n', lines[2])
		local line2 = string.format( "%s\n", lines[1])

		new:write(line1)
		new:write(line2)
	end
	new:close()
	source:close()
end

HandleModifierState()