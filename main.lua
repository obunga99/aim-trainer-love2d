function love.load()

	scene = require("menu_scene")
	if scene.load then scene:load() end
end

function love.update(dt)
	if scene.update then scene:update(dt) end
end

function love.draw()
	if scene.draw then scene:draw() end
end

function love.mousepressed(x, y, key)
	change_scene(x, y, key)
	if scene.mousepressed then scene:mousepressed() end
	end

function change_scene(x, y, key)
	if key == 1 and x >= lg.getWidth()/2 and x <= (lg.getWidth()/2) + 100 and y >= lg.getHeight()/2 and y <= (lg.getHeight()/2) + 50 then
		scene = require("play_scene")
		if scene.load then scene:load() end
	end
end
