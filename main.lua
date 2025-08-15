local SceneryInit = require("core/scenery") --gets the scenery library
local scenery = SceneryInit( --initializes the scene manager
	{ path = "scene/menu_scene"; key = "menu"; default = "true"; },
	{ path = "scene/play_scene"; key = "play"; },
	{ path = "scene/play_scene2"; key = "play2"; },
	{ path = "scene/mobile_scene"; key = "play3"; }--asigns a path to all the scenes and and also asigns a name
)

function love.load()
	lg = love.graphics
	scenery:load() --loads the scene with the default = true
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

function love.touchpressed(x, y)
	scenery:touchpressed(x, y)
end
