import 'CoreLibs/object'
import 'CoreLibs/sprites'

class('MovingSprite', {
	dx = 0,
	dy = 0
}).extends(playdate.graphics.sprite)

function MovingSprite:update()
	self:moveTo(self.x + self.dx, self.y + self.dy)
end

for i = 1, 200 do
	MovingSprite():add()
end

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
