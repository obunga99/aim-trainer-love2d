function love.load()
lg = love.graphics

x = 40
y = 40
end

function love.draw()
lg.circle("line", x, y, 20)
end

function love.update()
x = x + 1
x = math.sin(x)
end
