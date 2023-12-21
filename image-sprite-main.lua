local SIZE <const> = 40
local SPACING <const> = SIZE / 2

local image <const> = playdate.graphics.image.new(SIZE, SIZE, playdate.graphics.kColorBlack)

for x = SPACING, 400 - SPACING, 13 do
	for y = SPACING, 240 - SPACING, 12 do
		local sprite <const> = playdate.graphics.sprite.new(image)
		sprite:moveTo(x, y)
		sprite:add()
	end
end

-- 476 sprites
print(playdate.graphics.sprite.spriteCount())

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
