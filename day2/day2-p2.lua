local io = require("io")

local total = 0
for line in io.lines("input") do
	local minReds = tonumber(0)
	for reds in string.gmatch(line, "(%d+) red") do
		if tonumber(reds) > minReds then
			minReds = tonumber(reds)
		end
	end

	local minGreens = tonumber(0)
	for greens in string.gmatch(line, "(%d+) green") do
		if tonumber(greens) > minGreens then
			minGreens = tonumber(greens)
		end
	end

	local minBlues = tonumber(0)
	for blues in string.gmatch(line, "(%d+) blue") do
		if tonumber(blues) > minBlues then
			minBlues = tonumber(blues)
		end
	end

	total = total + (minReds * minGreens * minBlues)
end

print(total)
