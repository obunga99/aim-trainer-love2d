function stabilize_cursor()	--put this inside the love.update()

	--this also calculates the stuff concerned with the sensitivity
	cursor = love.mouse.newCursor("/cursor/cur.png", 51, 51)	
	love.mouse.setCursor(cursor)
	mouse_x = love.mouse.getX()
	mouse_y = love.mouse.getY()
end

function draw_cursor()
	lg.setColor(0, 1, 0, 1)
	lg.rectangle("fill", mouse_x, mouse_y, 3, 3)
	lg.setColor(0, 0, 0, 1)
	lg.rectangle("line", mouse_x, mouse_y, 3, 3)
end
