target = {} --declare a table for the targets
isHit = false
range_x = 100
range_y = 100
target_r = 0
target_g = 1
target_b = 0
target_ammount = 3
target_size = 27
bg_r = 0.3
bg_g = 0.3
bg_b = 0.3
function create_target() --a for loop to add a target object from the target table inside another table
	for i = 1, target_ammount do
		target[i] = {
			x = math.random((lg.getWidth()/2) - range_x, (lg.getWidth()/2) + range_x),--this make it go to the middle theoretically
			y = math.random((lg.getHeight()/2) - range_y, (lg.getHeight()/2) + range_y),--well this one is the actual one that goes in the middle
			r = target_size
		
		}
	end
end

function set_background()
	lg.setBackgroundColor(bg_r, bg_g, bg_b)
	lg.setColor(0, 0, 0)
	lg.rectangle("line", 0, 0, lg.getWidth(), lg.getHeight())
end


function draw_target() --draws the target on the screen


for i, target in ipairs(target) do --draws each of the n ammount of targets
		lg.setColor(target_r, target_g, target_b, 1) --sets the color to red
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
				target.x = math.random((lg.getWidth()/2) - range_x, (lg.getWidth()/2) + range_x) -- puts it again randomly
				target.y = math.random((lg.getHeight()/2) - range_y, (lg.getHeight()/2) + range_y)
				score.hits = score.hits + 1
				total_ttk = total_ttk + ttk
				ttk = 0
				if total_ttk <= 0 then
					avg_ttk = 0
				else
					avg_ttk = (total_ttk/score.hits)
				end
				isHit = true

				break --breaks after it found the target that has been shot or something
			end
				
		end
		if not isHit then
			score.miss = score.miss + 1
		end
end


end

function hitscan2(x, y, distance) --method for scanning whenever the mouse clicks one of the targets 
	if key == 1 then
		isHit = false


		for i, target in ipairs(target) do --s the whole thing inside a forloop to make sure every target gets involved or some shit
			local distance = math.sqrt((mouse_x - target.x)^2 + (mouse_y - target.y)^2)
			if x >= 30 and x <= 100 and y >= 30 and y <= 70 and distance <= target.r and mouse_x >= 0 and mouse_x <= lg.getWidth() and mouse_y >= 0 and mouse_y <= lg.getHeight() then --checks the collision with the mouse and a target through aab
				target.x = math.random((lg.getWidth()/2) - range_x, (lg.getWidth()/2) + range_x) -- puts it again randomly
				target.y = math.random((lg.getHeight()/2) - range_y, (lg.getHeight()/2) + range_y)
				score.hits = score.hits + 1
				total_ttk = total_ttk + ttk
				ttk = 0
				if total_ttk <= 0 then
					avg_ttk = 0
				else
					avg_ttk = (total_ttk/score.hits)
				end
				isHit = true

				break --breaks after it found the target that has been shot or something
			end
				
		end
		if not isHit then
			score.miss = score.miss + 1
		end
end
end



