local play = {}
local crosshair
local judgement = false
function play:load()	--declaration/initialization of variables/files
	require("/core/cursor")
	require("/core/exit_button")
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
	



	draw_ebutton()
end
	
function play:mousepressed(x, y, key)
	hitscan(x, y, key, distance)--the function for shooting the target
	if key == 1 and x >= exit_button_x and x <= exit_button_x + 50 and y >= 10 and y <= 40 then
		self.setScene("menu")
	end
end



return play
