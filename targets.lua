target = {} --declare a table for the targets
isHit = false
function create_target() --a for loop to add a target object from the target table inside another table
	for i = 1, 3 do
		target[i] = {
			x = math.random(30, lg.getWidth() - 30),--this make it go to the middle theoretically
			y = math.random(10, lg.getHeight() - 10),--well this one is the actual one that goes in the middle
			r = 34
		
		}
	end
end

function set_background()
	lg.setColor(1, 1, 1, 1)
	lg.rectangle("fill", -20, -20, 11000, 11000)
end


function draw_target() --draws the target on the screen


for i, target in ipairs(target) do --draws each of the n ammount of targets
		lg.setColor(1, 0, 0, 1) --sets the color to red
		lg.circle("fill", target.x, target.y, target.r)
		lg.setColor(0, 0, 0, 1)
		lg.circle("line", target.x, target.y, target.r)
	end
end

function hitscan(x, y, key, distance) --method for scanning whenever the mouse clicks one of the targets 
	if key == 1 then
		isHit = false


		for i, target in ipairs(target) do --s the whole thing inside a forloop to make sure every target gets involved or some shit
			local distance = math.sqrt((x - target.x)^2 + (y - target.y)^2)
			if key == 1 and distance <= target.r and x >= 0 and x <= lg.getWidth() and y >= 0 and y <= lg.getHeight()then --checks the collision with the mouse and a target through aab
			target.x = math.random(math.random(100, 300), lg.getWidth() - math.random(100, 300)) -- puts it again randomly
			target.y = math.random(math.random(50, 100), lg.getHeight() - math.random(50, 100))
			score.hits = score.hits + 1
			isHit = true
			break --breaks after it found the target that has been shot or something
		end
				
	end
		if not isHit then
			score.miss = score.miss + 1
		end
end

end

