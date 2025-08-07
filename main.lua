function love.load()	--declaration/initialization of variables/files
	require("cursor")
	require("targets")
	require("timer")
	lg = love.graphics
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
end

function love.update(dt)
	stabilize_cursor() --I dunno 
	update_score(dt)
end
function love.draw()
	set_background()
	draw_target() --draws the target to the screen
	draw_score()
	

end
	
function love.mousepressed(x, y, key)
	hitscan(x, y, key, distance)
end

