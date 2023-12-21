import 'CoreLibs/object'
import 'CoreLibs/sprites'

class('MovingSprite', {
	dx = 0,
	dy = 0
}).extends(playdate.graphics.sprite)

function MovingSprite:update()
	self:moveTo(self.x + self.dx, self.y + self.dy)
	self:overlappingSprites()
end

for i = 1, 21 do
	local sprite <const> = MovingSprite()
	sprite:setGroups({1})
	sprite:setCollidesWithGroups({1})
	sprite:setCollideRect(0, 0, 1, 1)
	sprite:add()
end

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
