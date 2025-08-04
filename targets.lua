target = {}

function create_target()
	for i = 1, 5 do
		target[i] = {
			x = math.random(60, lg.getWidth() - 60),
			y = math.random((lg.getHeight()/2) - 10, (lg.getHeight()/2) + 10),
			w = 34,
			h = 34
		
		}
	end
end

function draw_target()
	lg.setColor(1, 0, 0, 1)
	for i, target in ipairs(target) do
		lg.rectangle("fill", target.x, target.y, target.w, target.h)
	end
end

function hitscan()
	for i, target in ipairs(target) do

		if love.mouse.isDown("1") and mouse_x >= target.x and mouse_x <= target.x + target.w and mouse_y >= target.y and mouse_y <= target.y + target.h then

			target.x = math.random(60, lg.getWidth() - 60)
			target.y = math.random((lg.getHeight()/2) - 10, (lg.getHeight()/2) + 10)
			break
		end
	end
end
