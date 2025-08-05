function love.load()	--declaration/initialization of variables/files
	require("cursor")
	require("targets")
	lg = love.graphics
	create_target() --method from targets.lua for instantiating 5 targets
	
end

function love.update(dt)
	stabilize_cursor() --I dunno 


end

function love.draw()
	draw_target() --draws the target to the screen
end
	
function love.mousepressed(x, y, key)
		for i, target in ipairs(target) do --does the whole thing inside a forloop to make sure every target gets involved or some shit

		if key == 1 and x >= target.x and x <= target.x + target.w and y >= target.y and y <= target.y + target.h then --checks the collision with the mouse and a target through aab

			target.x = math.random(30, lg.getWidth() - 30) -- puts it again randomly
			target.y = math.random(10, lg.getHeight() - 10)
			break --breaks after it found the target that has been shot or something
		end
	end

end

