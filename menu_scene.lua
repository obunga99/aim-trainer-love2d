local scene = {}

function scene:load()
	lg = love.graphics
	
end

function scene:update(dt)

end

function scene:draw()
	lg.rectangle("fill", 0, 0, 10000, 10000)
	lg.setColor(0, 0, 0, 1)
	lg.rectangle("fill", lg.getWidth()/2, lg.getHeight()/2, 50, 50)
	lg.setColor(1, 1, 1, 1)
	lg.print("Play", lg.getWidth()/2, lg.getHeight()/2)
end

function scene:mousepressed(x, y, key)
end



return scene
