local menu = {} --makes the menu object for scenery to work
local set_mode = false
local mobile_mode = false
local checkB = { --makes a button calss
	x = 150,
	y = 50,
	w = 20,
	h = 20,
	r = 1,
	g = 0,
	b = 0
}

local checkB2 = { --makes a button calss
	x = 150,
	y = 70,
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
	lg.print("avg. ttk: "..string.format("%.2f", avg_ttk).."s", 10, 20)
	lg.setColor(1, 1, 1, 1)

	--for the option to set the mode
	lg.setColor(checkB.r, checkB.g, checkB.b)
	lg.rectangle("fill", checkB.x, checkB.y, checkB.w, checkB.h)
	lg.setColor(0, 0, 0, 1)
	lg.print("pseudo 3d fps mode: ", 10, 50)

	lg.setColor(checkB2.r, checkB2.g, checkB2.b)
	lg.rectangle("fill", checkB2.x, checkB2.y, checkB2.w, checkB2.h)
	lg.setColor(0, 0, 0, 1)
	lg.print("mobile mode: ", 10, 70)
end

function menu:mousepressed(x, y, key) --checks if any of the buttons is clicked then will execute a code acordingly
	if key == 1 and x >= 200 and x <= 300 and y >= lg.getHeight()/2 and y <= (lg.getHeight()/2) + 50 then
		if set_mode == false then
			self.setScene("play")
		elseif set_mode == true then
			self.setScene("play2")
		elseif mobile_mode == true then
			self.setScene("play3")
		end
	end
	if set_mode == false and key == 1 and x >= checkB.x and x <= checkB.x + checkB.w and y >= checkB.y and y <= checkB.y + checkB.h then
		set_mode = true
		checkB.r = 0
		checkB.g = 1
e	elseif set_mode == true and key == 1 and x >= checkB.x and x <= checkB.x + checkB.w and y >= checkB.y and y <= checkB.y + checkB.h then
		set_mode = false
		checkB.r = 1
		checkB.g = 0
	end
	
	if mobile_mode == false and key == 1 and x >= checkB2.x and x <= checkB2.x + checkB2.w and y >= checkB2.y and y <= checkB2.y + checkB2.h then
		mobile_mode = true
		checkB2.r = 0
		checkB2.g = 1
	end

nd


return menu --returns a menu table
