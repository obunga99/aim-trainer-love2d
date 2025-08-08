function love.load()	--declaration/initialization of variables/files
	require("cursor")
	require("targets")
	require("timer")
	lg = love.graphics
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
	camera = require("libs/camera")
	camera = camera()	
end

function love.update(dt)
	stabilize_cursor() --I dunno 
	update_score(dt)
	camera:lookAt(mouse_x, mouse_y)

end
function love.draw()
	camera:attach()
	set_background()
	draw_score()

	draw_target() --draws the target to the screen
	love.mouse.setRelativeMode(true)
	lg.setColor(0, 0, 0, 1)
	lg.circle("fill", mouse_x, mouse_y, 5)
	camera:detach()
end
	
function love.mousepressed(x, y, key)
	hitscan(x, y, key, distance)
end

