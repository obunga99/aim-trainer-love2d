function love.load()
require("cursor")
requie("target")

lg = love.graphics

end

function love.update(dt)
	stabilize_cursor()
	love.mouse.setVisible(false)
end

function love.draw()
	init_cursor()

end

