function love.load()
require("cursor")
require("targets")

lg = love.graphics
targets_holder = {}
	rect = {}
	rect.x = 100
	rect.y = 100
	rect.w = 20
	rect.h = 20



end

function love.update(dt)
	stabilize_cursor()
	love.mouse.setVisible(false)
	
end

function love.draw()
	lg.setColor(1, 0, 0, 1)
	lg.rectangle("fill", rect.x, rect.y, rect.w, rect.h)
	init_cursor()
end
	
function love.mousepressed()
	if love.mouse.isDown("1") and mouse_x >= rect.x and mouse_x <= rect.x + rect.w and mouse_y >= rect.y and mouse_y <= rect.y + rect.h then
                rect.x = math.random(50, 300)
                rect.y = math.random(50, 60)
        end
end
