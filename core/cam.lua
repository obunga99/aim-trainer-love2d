local camera = {x = 0, y = 0, scale = 1}

function cam_update(dt)
    -- Get mouse position in world coordinates
    local mouseX, mouseY = love.mouse.getPosition()
    local worldMouseX = mouseX / camera.scale + camera.x
    local worldMouseY = mouseY / camera.scale + camera.y
    
    -- Get screen center coordinates
    local screenCenterX = love.graphics.getWidth() / 2
    local screenCenterY = love.graphics.getHeight() / 2
    
    -- Calculate camera offset to center mouse
    camera.x = camera.x + (worldMouseX - screenCenterX / camera.scale - camera.x) * 0.1 * dt * 60
    camera.y = camera.y + (worldMouseY - screenCenterY / camera.scale - camera.y) * 0.1 * dt * 60
end

function cam_draw()
    -- Apply camera transformation
    love.graphics.push()
    love.graphics.scale(camera.scale)
    love.graphics.translate(-camera.x, -camera.y)
    
    -- Draw your game world here
    -- All coordinates should be in world space
    
    love.graphics.pop()
    
    -- Draw UI elements here (if they shouldn't be affected by camera)
end
