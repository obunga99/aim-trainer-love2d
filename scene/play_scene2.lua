local play2 = {}
local crosshair
function play2:load()	--declaration/initialization of variables/files
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
	love.mouse.setRelativeMode(true)

end

function play2:update(dt)
	camera:lookAt(mouse_x, mouse_y) --lock onto the mouse for the pfp mode

	local isTrue = update_score(dt)--determines wether to make isTrue a true
	if isTrue == true then
		isTrue = false
		self.setScene("menu")--switches to menu_scene if true

	end


end
function play2:draw()
	camera:attach()
	lg.setBackgroundColor(1, 1, 1)
	draw_target() --draws the target to the screen


	draw_cursor(crosshair)

	draw_score()--draws the timers and stuff

	camera:detach()
end
	
function play2:mousepressed(x, y, key)
	hitscan(x, y, key, distance)--the function for shooting the target
end



return play2
