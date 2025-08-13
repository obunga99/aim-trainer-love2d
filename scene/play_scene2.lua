local play2 = {}
local crosshair
local judgement = true
function play2:load()	--declaration/initialization of variables/files
	require("/core/targets")
	require("/core/timer")
	require("/core/cursor")
	crosshair = lg.newImage("cursor/cur.png")
	camera = require("/libs/camera")
	lg = love.graphics
	crosshair = lg.newImage("/cursor/cur2.png")
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
	camera = camera()
	love.mouse.setRelativeMode(true)


end

function play2:update(dt)

	stabilize_cursor()
	camera:lookAt(mouse_x, mouse_y) --lock onto the mouse for the pfp mode

	local isTrue = update_score(dt)--determines wether to make isTrue a true
	if isTrue == true then
		isTrue = false
		self.setScene("menu")--switches to menu_scene if true

	end


end
function play2:draw()
	camera:attach()
	set_background()
	draw_target() --draws the target to the screen

	draw_cursor(crosshair)
	draw_score(judgement)--draws the timers and stuff

	camera:detach()
end
	
function play2:mousepressed(x, y, key)
	hitscan(x, y, key, distance)--the function for shooting the target
end



return play2
