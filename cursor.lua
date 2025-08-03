function stabilize_cursor()	--put this inside the love.update()

	--this also calculates the stuff concerned with the sensitivity
cursor_size = 5
mouse_x = love.mouse.getX()
mouse_y = love.mouse.getY()

real_x = mouse_x
real_y = mouse_y 


end


function init_cursor()
	--put this inside the love.draw()
	
	lg.setColor(0, 1, 0, 1)
	lg.circle("fill", real_x, real_y, cursor_size)
end

