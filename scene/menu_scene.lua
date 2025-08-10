local menu = {}


function menu:load(args)
	require("core/timer")
	lg = love.graphics
end

function menu:update(dt)
end

function menu:draw()
	love.mouse.setRelativeMode(false)
	lg.rectangle("fill", 0, 0, 10000, 10000)
	lg.setColor(0, 0, 0, 1)
	lg.rectangle("fill", lg.getWidth()/2, lg.getHeight()/2, 50, 50)
	lg.setColor(1, 1, 1, 1)
	lg.print("Play", lg.getWidth()/2, lg.getHeight()/2)
	lg.setColor(0, 0, 0, 1)
	lg.print("most hits: "..score.best, 10, 10)
	lg.setColor(1, 1, 1, 1)
end

function menu:mousepressed(x, y, key)
	if key == 1 then
		self.setScene("play")
	end
end


return menu
