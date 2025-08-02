function create_obst()
	obst = {}
	obst.x = lg.getWidth() + 100
	obst.y = math.random(0, lg.getHeight())
	obst.vel = math.random(3, 10)
	obst.w = math.random(10, 100)
	obst.h = math.random(10, 100)
	return obst
end






