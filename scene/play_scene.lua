local play = {}
local crosshair
local judgement = false
function play:load()	--declaration/initialization of variables/files
	require("/core/cursor")
	require("/core/targets")
	require("/core/timer")
	crosshair = lg.newImage("cursor/cur.png")
	lg = love.graphics
	crosshair = lg.newImage("/cursor/cur.png")
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets

end

function play:update(dt)
	stabilize_cursor() --Something like init cursor for the true 2d mode

	local isTrue = update_score(dt)--determines wether to make isTrue a true
	if isTrue == true then
		isTrue = false
		self.setScene("menu")--switches to menu_scene if true

	end


end
function play:draw()
	set_background()
	draw_target() --draws the target to the screen
	draw_score(judgement)--draws the timers and stuff
	lg.print("2d mode", mouse_x - mouse_x, mouse_y - mouse_y, 0, 1, 1)

end
	
function play:mousepressed(x, y, key)
	hitscan(x, y, key, distance)--the function for shooting the target
end



return play
