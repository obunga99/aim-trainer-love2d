local scene = {}
function scene:load()	--declaration/initialization of variables/files
	require("core/cursor")
	require("core/targets")
	require("core/timer")
	camera = require("libs/camera")

	lg = love.graphics
	crosshair = lg.newImage("cursor/cur.png")
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
		camera = camera()	
end

function scene:update(dt)
	stabilize_cursor() --I dunno 
	update_score(dt)
	camera:lookAt(mouse_x, mouse_y)

end
function scene:draw()
	camera:attach()
	lg.draw(crosshair, mouse_x, mouse_y)
	set_background()
	draw_score()

	draw_target() --draws the target to the screen
	love.mouse.setRelativeMode(true)
	lg.setColor(0, 1, 1)
	lg.circle("fill", mouse_x, mouse_y, 5)
	camera:detach()
end
	
function scene:mousepressed(x, y, key)
	hitscan(x, y, key, distance)
end

return scene
