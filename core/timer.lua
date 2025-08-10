score = {}

score.timer = 40
score.hits = 0
score.miss = 0
score.total = 0
score.acc = 0
score.best = 0


function draw_score()
	lg.setColor(0, 0 ,0 , 1)
	lg.print("time: "..score.timer, mouse_x - 100, mouse_y - (lg.getHeight()/2), 0, 2, 2)
	lg.print("hits: "..score.hits, mouse_x - (lg.getWidth()/2), mouse_y + 20)
	lg.print("miss: "..score.miss, mouse_x - (lg.getWidth()/2), mouse_y + 30)
	lg.print("accuracy: "..score.acc, mouse_x - (lg.getWidth()/2), mouse_y + 40)
	lg.print("most hits: "..score.best, mouse_x - (lg.getWidth()/2), mouse_y - (lg.getHeight()/2), 0, 2, 2)
end

function update_score(dt)
	local isHit = false
	score.timer = score.timer - dt
	
	if score.timer <= 0 then 
		

		if score.hits > score.best then
			score.best = score.hits
			set_score = score.best
		end

		
		isHit = true	
		score.timer = 40
		score.hits = 0
		score.miss = 0	
		score.total = 0
		
		return isHit
	end

	score.total = score.hits + score.miss
	if score.total == 0 then
		score.acc = 0
	elseif score.total >= 0 then
		score.acc = (score.hits / score.total) * 100
	end

end

