function newenemy()
  enemy = {}
  enemy.x = 64
  enemy.y = 64 
  enemy.sprites = {33,34}
  enemy.animationsprite = 1
  enemy.animationcounter = 0
  enemy.movementcounter = 10
  enemy.idle = function(self)
    if self.animationsprite == 1  and self.animationcounter == 20 then
     self.animationsprite = 2
	    self.animationcounter = 0
    elseif self.animationsprite == 2 and self.animationcounter == 20 then
	    self.animationsprite = 1
	    self.animationcounter = 0
	  end
	  self.animationcounter += 1 
  end
  enemy.stepmovement = function(self, direction) 
	  if direction == 0 then      --Right
	    self.x += 1
    elseif direction == 1 then  --Left
      self.x -= 1
    elseif direction == 2 then  --Down
      self.y += 1
    elseif direction == 3 then  --Up
      self.y -= 1
    else                        --No Movement
      self.x += 0
      self.y += 0
    end     
  end
  enemy.draw = function(self)
	  spr(self.sprites[self.animationsprite], self.x, self.y)
  end
  return enemy
end
