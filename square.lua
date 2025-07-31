
 square = {}
 square.x = math.random(100, 300)
 square.y = math.random(100, 300)
 square.w = 40
 square.h = 40
 square.r = 40

function drawsquare()
	love.graphics.rectangle("line", square.x, square.y, square.w, square.h)
end

