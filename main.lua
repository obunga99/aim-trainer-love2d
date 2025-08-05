function love.load()	--declaration/initialization of variables/files
	require("cursor")
	require("targets")
	lg = love.graphics
	create_target() --method from targets.lua for instantiating 5 targets
end

function love.update(dt)

	stabilize_cursor() --I dunno 
	--love.mouse.setVisible(false) -- makes the mouse invisible

end

function love.draw()
	draw_target() --draws the target to the screen
	--init_cursor() --draws the cursor
end
	
function love.mousepressed()
	hitscan() --method for detecting when the mouse cursor is clicking the target or in other terms shooting cuz you know this is a aim trainer
end

