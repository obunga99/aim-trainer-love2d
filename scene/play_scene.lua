local play = {}
function play:load()	--declaration/initialization of variables/files
	require("/core/cursor")
	require("/core/targets")
	require("/core/timer")
	camera = require("/libs/camera")

	lg = love.graphics
	crosshair = lg.newImage("/cursor/cur.png")
	distance = 0
	create_target() --method from targets.lua for instantiating 5 targets
	camera = camera()	

end

function play:update(dt)
	stabilize_cursor() --I dunno 
	local isTrue = update_score(dt)
	if isTrue == true then
		
		isTrue = false
		self.setScene("menu")

	end
	camera:lookAt(mouse_x, mouse_y)

end
function play:draw()
	camera:attach()
	lg.draw(crosshair, mouse_x, mouse_y)
	set_background()
	
	draw_target() --draws the target to the screen
	love.mouse.setRelativeMode(true)
	lg.setColor(0, 1, 1)
	lg.circle("fill", mouse_x, mouse_y, 5)
	draw_score()

	camera:detach()
end
	
function play:mousepressed(x, y, key)
	hitscan(x, y, key, distance)
end



return play
