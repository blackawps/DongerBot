function math.SecondsToHuman( sec, accuracy )
	local accuracy = accuracy or 2

	local years = sec/31536000
	local yearsRemainder = sec%31536000
	local days = yearsRemainder/86400
	local daysRemainder = sec%86400
	local hours = daysRemainder/3600
	local hourRemainder = (sec - 86400)%3600
	local min = hourRemainder/60
	local sec = sec%60
	
	years = math.floor( years )
	days = math.floor( days )
	hours = math.floor( hours )
	min = math.floor( min )
	sec = math.floor( sec )
	
	local results = {}
	
	if years >= 1 then
		table.insert( results, string.Plural( "year", years ) )
	end
	if days >= 1 then
		table.insert( results, string.Plural( "day", days ) )
	end
	if hours >= 1 then
		table.insert( results, string.Plural( "hour", hours ) )
	end
	if min >= 1 then
		table.insert( results, string.Plural( "minute", min ) )
	end
	if sec >= 1 then
		table.insert( results, string.Plural( "second", sec ) )
	end
	
	local result = {}
	for i=1,accuracy do
		result[ i ] = results[ i ]
	end
	
	return table.concat( result, ", " )
end

function math.randombias(min, max, bias)
	return math.floor(min + (max - min) * math.pow(math.random(), bias))
end