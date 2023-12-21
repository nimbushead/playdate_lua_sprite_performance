# playdate_lua_sprite_performance
A repository for exploring the limits of sprites using Lua for Playdate

This repository includes 5 lua files. Each can be renamed to `main.lua` and put into your project's `Source` folder. Play around with the number of sprites and what each sprite does to make new discoveries!

## Summary

In each file, the refresh rate is set to 50 FPS, the sprite update function is assigned to the playdate update function, and an effective frame rate of 48-50 FPS is achieved.

* `empty-sprite-main.lua`
  * 500 empty sprites.
* `image-sprite-main.lua`
  * 476 sprites with the same image (a 40x40 px black square).
* `movement-main.lua`
  * 200 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
* `collision-movement-main.lua`
  * 40 instances of a class that extends the Playdate sprite class. The update method uses `moveWithCollisions` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
* `mixed-main.lua`
  * 20 instances of a class that extends the Playdate sprite class. The update method uses `moveWithCollisions` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
  * 100 instances of a class that extends the Playdate sprite class. The update method uses `moveTo` with the sprite's `dx` and `dy` values added to its `x` and `y` values.
  * 125 empty sprites.
