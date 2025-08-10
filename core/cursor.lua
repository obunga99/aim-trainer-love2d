mouse_x, mouse_y = love.mouse.getPosition()
function stabilize_cursor()	--put this inside the love.update()

	--this also calculates the stuff concerned with the sensitivity
	cursor = love.mouse.newCursor("/cursor/cur.png", 51, 51)	
	love.mouse.setCursor(cursor)
	--mouse_x, mouse_y = love.mouse.getPosition()
end

function draw_cursor(crosshair)
	--lg.setColor(0, 1, 0, 1)
	--lg.rectangle("fill", mouse_x, mouse_y, 3, 3)
	--lg.setColor(0, 0, 0, 1)
	--lg.rectangle("line", mouse_x, mouse_y, 3, 3)
	lg.setColor(1, 1, 1)
	lg.draw(crosshair, mouse_x, mouse_y, 0, 1, 1, crosshair:getWidth()/2, crosshair:getHeight()/2)
end
