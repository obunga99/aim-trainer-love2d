target = {} --declare a table for the targets

function create_target() --a for loop to add a target object from the target table inside another table
	for i = 1, 10  do
		target[i] = {
			x = math.random(30, lg.getWidth() - 30),--this make it go to the middle theoretically
			y = math.random(10, lg.getHeight() - 10),--well this one is the actual one that goes in the middle
			w = 34,
			h = 34
		
		}
	end
end

function set_background()
	lg.setColor(1, 1, 1, 1)
	lg.rectangle("fill", -20, -20, 11000, 11000)
end


function draw_target() --draws the target on the screen
	lg.setColor(0, 0, 0, 1) --sets the color to red

for i, target in ipairs(target) do --draws each of the n ammount of targets
		lg.rectangle("fill", target.x, target.y, target.w, target.h)
	end
end

function hitscan(x, y, key) --method for scanning whenever the mouse clicks one of the targets 

	for i, target in ipairs(target) do --s the whole thing inside a forloop to make sure every target gets involved or some shit

		if key == 1 and x >= target.x and x <= target.x + target.w and y >= target.y and y <= target.y + target.h then --checks the collision with the mouse and a target through aab
			target.x = math.random(30, lg.getWidth() - 30) -- puts it again randomly
			target.y = math.random(10, lg.getHeight() - 10)
			break --breaks after it found the target that has been shot or something
		end
	end
end

