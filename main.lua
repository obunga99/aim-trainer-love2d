function love.load()
lg = love.graphics
require("obstacle")
require("player")

obst_holder = {}
timer = 0
max_timer = 1
dtimer = 0
max_dtimer = 5
end

function love.update(dt)
	controll_player(dt)
	bounds_player()
	for i, v in ipairs(obst_holder) do
		v.x = v.x - v.vel
		if player.x + player.w >= v.x and player.x  <= v.x + v.w and player.y + player.h >= v.y and player.y <= v.y + v.h then
		love.event.quit()
		end
		if v.x <= -50 then
			table.remove(obst_holder, (i + 1) - #obst_holder);
		end
	end

	timer = timer + dt
	dtimer = dtimer + dt
	if timer >= max_timer then
		table.insert(obst_holder, create_obst())
		timer = 0
	end

	if dtimer >= max_dtimer then
		dtimer = 0
		max_dtimer = max_dtimer + 1
		max_timer = max_timer - 0.02
	end
end

function love.draw()
	draw_player()
	for i, v in ipairs(obst_holder) do
		lg.rectangle("line", v.x, v.y, v.w, v.h)
	end

end



