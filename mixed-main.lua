import 'CoreLibs/object'
import 'CoreLibs/sprites'

class('MovingSprite', {
	dx = 0,
	dy = 0
}).extends(playdate.graphics.sprite)

function MovingSprite:collideUpdate()
	self:moveWithCollisions(self.x + self.dx, self.y + self.dy)
end

function MovingSprite:update()
	self:moveTo(self.x + self.dx, self.y + self.dy)
end

for i = 1, 20 do
	local sprite <const> = MovingSprite()
	sprite.update = sprite.collideUpdate
	sprite:setGroups({1})
	sprite:setCollidesWithGroups({2})
	sprite:setCollideRect(0, 0, 1, 1)
	sprite:add()
end

for i = 1, 100 do
	MovingSprite():add()
end

for i = 1, 125 do
	playdate.graphics.sprite.new():add()
end

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
