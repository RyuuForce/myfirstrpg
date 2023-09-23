palt(0, false)
palt(1, true)
grid_size = 1    
player = {}
player.x = 8
player.y = 8
player.dx = 1
player.dy = 1
player.spriteindex = 1
player.sprites = {1,2,3,4,5,6,7}
player.weapon = {17,18,19,20}
player.weaponSpriteIndex = 1
player.weaponAnimationTimer = 0
player.draw = function(self)
    spr(self.sprites[self.spriteindex], self.x * grid_size, self.y * grid_size)	
end
player.move = function(self)
  if btn(0) then
    self.x -= 1
	  self.spriteindex = 1
    self.weaponSpriteIndex = 1
  elseif btn(1) then
	  self.x += 1
	  self.spriteindex = 2
    self.weaponSpriteIndex = 2
  elseif btn(2) then
	  self.y -= 1
	  self.spriteindex = 3
    self.weaponSpriteIndex = 3
  elseif btn(3) then
	  self.y += 1
	  self.spriteindex = 4
    self.weaponSpriteIndex = 4
  end
end
player.attack = function(self)
  if btnp(4) then
    sfx(2)
  	if self.spriteindex == 1 then
	    spr(self.weapon[self.weaponSpriteIndex], (self.x - 8), self.y * grid_size)
	  elseif self.spriteindex == 2 then
	    spr(self.weapon[self.weaponSpriteIndex], (self.x + 8), self.y * grid_size)
	  elseif self.spriteindex == 3 then
	    spr(self.weapon[self.weaponSpriteIndex], self.x, (self.y - 8) * grid_size)
	  elseif self.spriteindex == 4 then
	    spr(self.weapon[self.weaponSpriteIndex], self.x, (self.y + 8) * grid_size)
	  end
  end
end
