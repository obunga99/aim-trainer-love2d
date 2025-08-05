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

function draw_target() --draws the target on the screen
	lg.setColor(1, 0, 0, 1) --sets the color to red
	for i, target in ipairs(target) do --draws each of the n ammount of targets
		lg.rectangle("fill", target.x, target.y, target.w, target.h)
	end
end

function hitscan(key, x, y) --method for scanning whenever the mouse clicks one of the targets 
end
