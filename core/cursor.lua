mouse_x, mouse_y = love.mouse.getPosition()

function stabilize_cursor()	--put this inside the love.update()

	--this also calculates the stuff concerned with the sensitivity
	cursor = love.mouse.newCursor("/cursor/cur.png", 51, 51)	
	mouse_x, mouse_y = love.mouse.getPosition()

	love.mouse.setCursor(cursor)
end

function draw_cursor(crosshair)
	lg.setColor(1, 1, 1)
	lg.draw(crosshair, mouse_x, mouse_y, 0, 1, 1, crosshair:getWidth()/2, crosshair:getHeight()/2)
end
