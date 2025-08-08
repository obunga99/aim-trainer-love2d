score = {}
score.timer = 40
score.hits = 0
score.miss = 0
score.total = 0
score.acc = 0
score.best = 0


function draw_score()
	lg.setColor(0, 0 ,0 , 1)
	lg.print("time: "..score.timer, 10, 10)
	lg.print("hits: "..score.hits, 10, 20)
	lg.print("miss: "..score.miss, 10, 30)
	lg.print("accuracy: "..score.acc, 10, 40)
	lg.print("most hits: "..score.best, 10, 50)
end

function update_score(dt)
	score.timer = score.timer - dt
	if score.timer <= 0 then 

		if score.hits > score.best then
			score.best = score.hits
		end

		score.timer = 40
		score.hits = 0
		score.miss = 0	
		score.total = 0

	end
	score.total = score.hits + score.miss
	score.acc = (score.hits / score.total) * 100
end
