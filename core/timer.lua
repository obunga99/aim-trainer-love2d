score = {}

score.hits = 0
score.miss = 0
score.total = 0
score.best = 0

local timer = 40
local acc = 0

function draw_score(judgement)
	if judgement == true then
		lg.setColor(0, 0 ,0 , 1)
		lg.print("time: "..string.format("%.2f", timer), mouse_x - 100, mouse_y - (lg.getHeight()/2), 0, 2, 2)
		lg.print("hits: "..score.hits, mouse_x - (lg.getWidth()/2), mouse_y + 20)
		lg.print("miss: "..score.miss, mouse_x - (lg.getWidth()/2), mouse_y + 30)
		lg.print("accuracy: "..string.format("%.2f", acc), mouse_x - (lg.getWidth()/2), mouse_y + 40)
		lg.print("most hits: "..score.best, mouse_x - (lg.getWidth()/2), mouse_y - (lg.getHeight()/2), 0, 2, 2)
	elseif judgement == false then
		lg.setColor(0, 0 ,0 , 1)
		lg.print("time: "..string.format("%.2f", timer), lg.getWidth()/2, 10, 0, 2, 2)
		lg.print("hits: "..score.hits, 10, 50)
		lg.print("miss: "..score.miss, 10, 60)
		lg.print("accuracy: "..string.format("%.2f", acc), 10, 10, 0, 2, 2)
		lg.print("most hits: "..score.best, 10, 70, 0, 1, 1)
	end

end

function update_score(dt)
	local isHit = false
	timer = timer - dt
	
	if timer <= 0 then 
		

		if score.hits > score.best then
			score.best = score.hits
			set_score = score.best
		end

		
		isHit = true	
		timer = 40
		score.hits = 0
		score.miss = 0	
		score.total = 0
		
		return isHit
	end

	score.total = score.hits + score.miss
	if score.total == 0 then
		acc = 0
	elseif score.total >= 0 then
		acc = (score.hits / score.total) * 100
	end

end

