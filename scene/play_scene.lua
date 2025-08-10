local play = {}
local crosshair
function play:load()	--declaration/initialization of variables/files
	require("/core/cursor")
	require("/core/targets")
	require("/core/timer")
	crosshair = lg.newImage("cursor/cur.png")
	camera = require("/libs/camera")

	lg = love.graphics
	crosshair = lg.newImage("/cursor/cur.png")
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
	camera = camera()	

end

function play:update(dt)
	stabilize_cursor() --Something like init cursor for the true 2d mode
	local isTrue = update_score(dt)--determines wether to make isTrue a true
	if isTrue == true then
		isTrue = false
		self.setScene("menu")--switches to menu_scene if true

	end
	camera:lookAt(mouse_x, mouse_y)--lock on to the mouse for the fps mode

end
function play:draw()
	camera:attach()
	set_background()
	
	draw_target() --draws the target to the screen
	love.mouse.setRelativeMode(true) -- for the fake fps mode
	draw_cursor(crosshair)
	draw_score()--draws the timers and stuff

	camera:detach()
end
	
function play:mousepressed(x, y, key)
	hitscan(x, y, key, distance)--the function for shooting the target
end



return play
