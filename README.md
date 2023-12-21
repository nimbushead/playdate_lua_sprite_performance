# playdate_lua_sprite_performance
A repository for exploring the limits of sprites using Lua for Playdate

This repository includes 9 lua files. Each can be renamed to `main.lua` and put into your project's `Source` folder. Play around with the number of sprites and what each sprite does to make new discoveries!

## Summary

In each file, the refresh rate is set to 50 FPS and an effective frame rate of 48-50 FPS is achieved. In each file except `overlapping-call-main.lua` and `overlapping-collisions-main.lua`, the sprite update function is assigned directly to `playdate.update`. In `overlapping-call-main.lua` and `overlapping-collisions-main.lua`, a function that calls the playdate sprite `update` and `allOverlappingSprites` functions is assigned to `playdate.update`.

* `empty-sprite-main.lua`
  * 500 empty sprites.
* `image-sprite-main.lua`
  * 476 sprites with the same image (a 40px black square).
* `movement-main.lua`
  * 200 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
* `collision-movement-main.lua`
  * 40 instances of a class that extends the Playdate sprite class. The update method uses `moveWithCollisions` with the sprite's `dx` and `dy` values added to its `x` and `y` values. Each has a collide rect of 1x1, groups = {1}, and collidesWithGroups = {2}.
* `collision-movement-collisions-main.lua`
  * 40 instances of a class that extends the Playdate sprite class. The update method uses `moveWithCollisions` with the sprite's `dx` and `dy` values added to its `x` and `y` values. Each has a collide rect of 1x1, groups = {1}, and collidesWithGroups = {1}.
* `mixed-main.lua`
  * 20 instances of a class that extends the Playdate sprite class. The update method uses `moveWithCollisions` with the sprite's `dx` and `dy` values added to its `x` and `y` values. Each has a collide rect of 1x1, groups = {1}, and collidesWithGroups = {2}.
  * 100 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
  * 125 empty sprites.
* `overlapping-call-main.lua`
  * 95 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
  * `allOverlappingSprites` is called in the `playdate.update` function.
* `overlapping-collisions-main.lua`
  * 8 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values. Each has a collide rect of 1x1, groups = {1}, and collidesWithGroups = {1}.
  * `allOverlappingSprites` is called in the `playdate.update` function.
* `overlapping-sprites-main.lua`
  * 21 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values, then it calls `sprite:overlappingSprites`. Each has a collide rect of 1x1, groups = {1}, and collidesWithGroups = {1}.
