function love.load()
lg = love.graphics
require("obstacle")
require("player")

obst_holder = {}
timer = 0
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
	if timer >= 1 then
		table.insert(obst_holder, create_obst())
		timer = 0
	end


end

function love.draw()
	draw_player()
	for i, v in ipairs(obst_holder) do
		lg.rectangle("line", v.x, v.y, v.w, v.h)
	end

end



