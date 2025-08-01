function love.load()
lg = love.graphics
require("player")

end

function love.draw()
	draw_player()
end

function love.update(dt)
	controll_player(dt)
	bounds_player()
end


