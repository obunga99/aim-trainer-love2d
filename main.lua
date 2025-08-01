function love.load()
lg = love.graphics
require("player")

end

function love.draw()
	draw_player()

end

function love.update()
	controll_player()
	bounds_player()
end


