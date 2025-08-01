player = {}

player.x = 0
player.y = 0
player.w = 20
player.h = 20
player.vx = 5
player.vy = 5

function draw_player()
	lg.rectangle("fill", player.x, player.y, player.w, player.h)
end

function controll_player(dt)
	if love.keyboard.isDown("d") then
		player.x = player.x + player.vx
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - player.vx	
	end
	if love.keyboard.isDown("w") then
		player.y = player.y - player.vy
	end
	if love.keyboard.isDown("s") then
		player.y = player.y + player.vy		
	end

	


	
end

function bounds_player()
	if player.x + player.w >= lg.getWidth() then
		player.x = player.x - 5
	end
	if player.x  <= 0 then
		player.x = player.x + 5
	end
	if player.y <= 0 then
		player.y = player.y + 5
	end
	if player.y + player.h >= lg.getHeight() then
		player.y = player.y - 5
	end


	
end


