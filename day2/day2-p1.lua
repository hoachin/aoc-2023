local io = require("io")

local maxRed = 12
local maxGreen = 13
local maxBlue = 14

local total = 0
for line in io.lines("input") do
	local id = string.match(line, "(%d+):")

	for reds in string.gmatch(line, "(%d+) red") do
		if tonumber(reds) > maxRed then
			goto continue
		end
	end

	for greens in string.gmatch(line, "(%d+) green") do
		if tonumber(greens) > maxGreen then
			goto continue
		end
	end

	for blues in string.gmatch(line, "(%d+) blue") do
		if tonumber(blues) > maxBlue then
			goto continue
		end
	end

  total = total + id

	::continue::
end

print(total)
