local io = require("io")
local string = require("string")
local math = require("math")

local total = 0
for line in io.lines("input") do
	local ft = {
		{ string.find(line, "one") or math.maxinteger, "1" },
		{ string.find(line, "two") or math.maxinteger, "2" },
		{ string.find(line, "three") or math.maxinteger, "3" },
		{ string.find(line, "four") or math.maxinteger, "4" },
		{ string.find(line, "five") or math.maxinteger, "5" },
		{ string.find(line, "six") or math.maxinteger, "6" },
		{ string.find(line, "seven") or math.maxinteger, "7" },
		{ string.find(line, "eight") or math.maxinteger, "8" },
		{ string.find(line, "nine") or math.maxinteger, "9" },
		{ string.find(line, "%d"), string.match(line, "%d") },
	}

	local first = math.maxinteger
	local d1
	for _, v in ipairs(ft) do
		if v[1] < first then
			first = v[1]
			d1 = v[2]
		end
	end

	local lt = {
		{ select(2, string.find(line, ".*one")) or math.mininteger, "1" },
		{ select(2, string.find(line, ".*two")) or math.mininteger, "2" },
		{ select(2, string.find(line, ".*three")) or math.mininteger, "3" },
		{ select(2, string.find(line, ".*four")) or math.mininteger, "4" },
		{ select(2, string.find(line, ".*five")) or math.mininteger, "5" },
		{ select(2, string.find(line, ".*six")) or math.mininteger, "6" },
		{ select(2, string.find(line, ".*seven")) or math.mininteger, "7" },
		{ select(2, string.find(line, ".*eight")) or math.mininteger, "8" },
		{ select(2, string.find(line, ".*nine")) or math.mininteger, "9" },
		{ select(2, string.find(line, ".*%d")), string.match(line, "^.*(%d)") },
	}

	local last = math.mininteger
	local d2
	for _, v in ipairs(lt) do
		if v[1] > last then
			last = v[1]
			d2 = v[2]
		end
	end

	total = total + tonumber(d1 .. d2)
end

print(total)
