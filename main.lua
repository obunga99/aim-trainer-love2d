function love.load()
require("cursor")


lg = love.graphics
targets_holder = {}
timer = 0
ammount = 0
j = 1
k = 1
end

function love.update(dt)

	stabilize_cursor()
	love.mouse.setVisible(false)

	timer = timer + 0.01
	if timer <= 0.06 and ammount <= 5 then
		table.insert(targets_holder, create_rectangles())
		ammount = ammount + 1
	end

end

function love.draw()
	for j, k in ipairs(targets_holder) do
		lg.rectangle("fill", k.x, k.y, k.w, k.h)
	end

	init_cursor()
end
	
function love.mousepressed()
	if love.mouse.isDown("1") and mouse_x >= k.x and mouse_x <= k.x + k.w and mouse_y >= k.y and mouse_y <= k.y + k.h then
		k.x = math.random(60, 300)
	end
end

function create_rectangles()
	rect = {}
	rect.x = 100
	rect.y = 100
	rect.w = 34
	rect.h = 34
	return rect
end
