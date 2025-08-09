local score = {}
score.timer = 10
score.hits = 0
score.miss = 0
score.total = 0
score.acc = 0
score.best = 0


function draw_score()
	lg.setColor(0, 0 ,0 , 1)
	lg.print("time: "..score.timer, mouse_x - lg.getWidth()/2, mouse_y + 10)
	lg.print("hits: "..score.hits, mouse_x - (lg.getWidth()/2), mouse_y + 20)
	lg.print("miss: "..score.miss, mouse_x - (lg.getWidth()/2), mouse_y + 30)
	lg.print("accuracy: "..score.acc, mouse_x - (lg.getWidth()/2), mouse_y + 40)
	lg.print("most hits: "..score.best, mouse_x - (lg.getWidth()/2), mouse_y + 50)
end

function update_score(dt, play)
	local best_hits = 0
	score.timer = score.timer - dt
	
	if score.timer <= 0 then 

		score.timer = 10
		if score.hits > score.best then
			score.best = score.hits
			best_hits = score.best
			play.setScene("over", {best = best_hits})
		end


		score.hits = 0
		score.miss = 0	
		score.total = 0

	end

	score.total = score.hits + score.miss
	score.acc = (score.hits / score.total) * 100


end


