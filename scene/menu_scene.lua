local menu = {} --makes the menu object for scenery to work
local set_mode = false
local checkB = { --makes a button calss
	x = 150,
	y = 50,
	w = 20,
	h = 20,
	r = 1,
	g = 0,
	b = 0
}



function menu:load(args)
	require("core/timer")
	require("core/get_mode")
	lg = love.graphics --love.graphics shortcut cuz im lazy
end

function menu:update(dt)
end

function menu:draw()
	love.mouse.setRelativeMode(false) 
	lg.setBackgroundColor(1, 1, 1) -- sets bg color to white
	lg.setColor(0, 0, 0, 1) --everything else is for the ui and buttons
	lg.rectangle("fill", 200, lg.getHeight()/2, 100, 50)
	lg.setColor(1, 1, 1, 1)
	lg.print("Play", 230, (lg.getHeight()/2) + 20)
	lg.setColor(0, 0, 0, 1)
	lg.print("most hits: "..score.best, 10, 10)
	lg.setColor(1, 1, 1, 1)

	--for the option to set the mode
	lg.setColor(checkB.r, checkB.g, checkB.b)
	lg.rectangle("fill", checkB.x, checkB.y, checkB.w, checkB.h)
	lg.setColor(0, 0, 0, 1)
	lg.print("pseudo 3d fps mode: ", 10, 50)
end

function menu:mousepressed(x, y, key) --checks if any of the buttons is clicked then will execute a code acordingly
	if key == 1 and x >= 200 and x <= 300 and y >= lg.getHeight()/2 and y <= (lg.getHeight()/2) + 50 then
		if set_mode == false then
			self.setScene("play")
		elseif set_mode == true then
			self.setScene("play2")
		end
	end
	if set_mode == false and key == 1 and x >= checkB.x and x <= checkB.x + checkB.w and y >= checkB.y and y <= checkB.y + checkB.h then
		set_mode = true
		checkB.r = 0
		checkB.g = 1

	elseif set_mode == true and key == 1 and x >= checkB.x and x <= checkB.x + checkB.w and y >= checkB.y and y <= checkB.y + checkB.h then
		set_mode = false
		checkB.r = 1
		checkB.g = 0
	end
end


return menu --returns a menu table
