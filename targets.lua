function create_targets()
	target = {}

	target.x = math.random(50, lg.getWidth() - 50)
	target.y = math.random(50, lg.getHeight() - 50)
	target.w = 10
	target.h = 10
	return target

end

function add_target(v)
	target_ammount = 5
	for i = 1, target_ammount do
		table.insert(target_holder, create_targets)
	end
	if mouse_x > target.x and mouse_x < target.x + target.w and mouse.y > target.y and mouse.y < target.y + target.h then
		table.remove(target_holder, #target_holder)
	end

end

function draw_target()
	for i,v in ipairs(target_holder) do
		lg.setColor(1, 0, 0, 1)
		lg.rectangle("fill", v.x, v.y, v.w, v.h)
	end

end
