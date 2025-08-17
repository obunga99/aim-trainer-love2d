local button_x = love.graphics.getWidth()-50
local button_y = (love.graphics.getHeight()/2) + 10

function draw_ebutton()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", button_x, 10, 50, 30)
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("exit", button_x, 10, 0, 1, 1)

end

function draw_ebutton_pfp()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", mouse_x + button_x/2, mouse_y + button_y, 50, 30)
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("exit", mouse_x + button_x/2, mouse_y + button_y, 0, 1, 1)
	
end




