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
	set_background()
	draw_target() --draws the target to the screen
end
	
function love.mousepressed(x, y, key)
	hitscan(x, y, key)
end

