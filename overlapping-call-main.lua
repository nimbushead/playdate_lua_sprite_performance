import 'CoreLibs/object'
import 'CoreLibs/sprites'

class('MovingSprite', {
	dx = 0,
	dy = 0
}).extends(playdate.graphics.sprite)

function MovingSprite:update()
	self:moveTo(self.x + self.dx, self.y + self.dy)
end

for i = 1, 95 do
	local sprite <const> = MovingSprite()
	sprite:setGroups({1})
	sprite:setCollidesWithGroups({2})
	sprite:setCollideRect(0, 0, 1, 1)
	sprite:add()
end

playdate.display.setRefreshRate(50)

function playdate.update()
	playdate.graphics.sprite.update()
	playdate.graphics.sprite.allOverlappingSprites()
end
