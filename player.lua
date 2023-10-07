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
player.weapon = {17,18,19,20,21,22,23,24,25,26,27,28}
player.weaponSpriteIndex = 1
player.weaponAnimationTimer = 0
player.draw = function(self)
    spr(self.sprites[self.spriteindex], self.x * grid_size, self.y * grid_size)	
end
player.move = function(self)
  if btn(0) then
    self.x -= 1
	  self.spriteindex = 1
  elseif btn(1) then
	  self.x += 1
	  self.spriteindex = 2
  elseif btn(2) then
	  self.y -= 1
	  self.spriteindex = 3
  elseif btn(3) then
	  self.y += 1
	  self.spriteindex = 4
  end
end
player.updateWeapon = function(self)
  sfx(2)
  if self.spriteindex == 1 then 
    if self.weaponSpriteIndex < 3 and self.weaponSpriteIndex >= 1 then
      self.weaponSpriteIndex += 1
     else
      self.weaponSpriteIndex = 1
    end
  elseif self.spriteindex == 2 then
    if self.weaponSpriteIndex < 6 and self.weaponSpriteIndex >= 3 then
      self.weaponSpriteIndex += 1
    else
      self.weaponSpriteIndex = 4 
    end
  elseif self.spriteindex == 3 then
    if self.weaponSpriteIndex < 9 and self.weaponSpriteIndex >= 6 then
      self.weaponSpriteIndex += 1
    else
      self.weaponSpriteIndex = 7
    end
  elseif self.spriteindex == 4 then
    if self.weaponSpriteIndex < 12 and self.weaponSpriteIndex >= 9 then
      self.weaponSpriteIndex += 1
    else
      self.weaponSpriteIndex = 10
    end
  end
end
player.drawWeapon = function(self)
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
