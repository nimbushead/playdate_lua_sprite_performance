import 'CoreLibs/object'
import 'CoreLibs/sprites'

class('MovingSprite', {
	dx = 0,
	dy = 0
}).extends(playdate.graphics.sprite)

function MovingSprite:update()
	self:moveWithCollisions(self.x + self.dx, self.y + self.dy)
end

for i = 1, 40 do
	local sprite <const> = MovingSprite()
	sprite:setGroups({1})
	sprite:setCollidesWithGroups({2})
	sprite:setCollideRect(0, 0, 1, 1)
	sprite:add()
end

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
