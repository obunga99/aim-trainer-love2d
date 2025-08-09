local over = {}

function over:load(args)
	lg = love.graphics
	score = args.score 
end

function over:update(dt)

end

function over:draw()
	lg.rectangle("fill", 0, 0, 10000, 10000)

	lg.setColor(0, 0, 0, 1)
	lg.rectangle("fill", 10, 10, 50, 20)
	lg.rectangle("fill", 10, 60, 50, 20)

	lg.setColor(1, 1, 1, 1)
	lg.print("Replay", 15, 10)
	lg.print("Menu", 15, 60)

	lg.setColor(0, 0, 0, 1)
	lg.print("most hits: "..score, lg.getWidth()/2, lg.getHeight()/2, 0, 30, 20)
end

function over:mousepressed(x, y, key)
	if key == 1 and x >= 10 and x <= 60 and y >= 10 and y <= 30 then
		self.setScene("play")
	end
	if key == 1 and x >= 10 and x <= 60 and y >= 10 and y <= 80 then
		self.setScene("menu")
	end
end

return over
