pfp_exit_button_x = (love.graphics.getWidth()-50) + mouse_x
pfp_exit_button_y = ((love.graphics.getHeight()/2) + 10) + mouse_x
exit_button_x = (love.graphics.getWidth()-50) 
exit_button_y = ((love.graphics.getHeight()/2) + 10) 


function draw_ebutton()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", exit_button_x, 10, 50, 30)
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("exit", exit_button_x, 10, 0, 1, 1)

end

function draw_ebutton_pfp()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", pfp_exit_button_x/2, pfp_exit_button_y, 50, 30)
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("exit", pfp_exit_button_x/2, pfp_exit_button_y, 0, 1, 1)
	
end




