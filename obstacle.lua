function create_obst()
	obst = {}
	obst.x = lg.getWidth() + 100
	obst.y = math.random(0, lg.getHeight())
	obst.vel = 2
	obst.w = math.random(10, 30)
	obst.h = math.random(10, 30)
	return obst
end






