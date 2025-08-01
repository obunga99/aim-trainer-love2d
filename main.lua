function love.load()
lg = love.graphics
require("player")

end

function love.draw()
	draw_player()
	lg.print(player.x, 100, 100)
	lg.print(player.y, 100, 120)
	lg.print(player.vx, 100, 130)
	lg.print(player.vy, 100, 140)
end

function love.update()
	controll_player()
	bounds_player()
end


