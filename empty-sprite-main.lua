for i = 1, 500 do
	playdate.graphics.sprite.new():add()
end

playdate.display.setRefreshRate(50)

playdate.update = playdate.graphics.sprite.update
