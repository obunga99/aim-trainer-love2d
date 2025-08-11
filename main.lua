local SceneryInit = require("core/scenery")
local scenery = SceneryInit(
	{ path = "scene/menu_scene"; key = "menu"; default = "true"; },
	{ path = "scene/play_scene"; key = "play"; },
	{ path = "scene/play_scene2"; key = "play2"; }
)

function love.load()
	lg = love.graphics
	scenery:load()
end

function love.update(dt)
	scenery:update(dt)
end

function love.draw()
	scenery:draw()
end

function love.mousepressed(x, y, key)
	scenery:mousepressed(x, y, key)
end
