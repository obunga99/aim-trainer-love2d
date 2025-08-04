function love.load()
	require("cursor")
	require("targets")
	lg = love.graphics
	create_target()
end

function love.update(dt)

	stabilize_cursor()
	love.mouse.setVisible(false)

end

function love.draw()
	draw_target()
	init_cursor()
end
	
function love.mousepressed()
	hitscan()
end

