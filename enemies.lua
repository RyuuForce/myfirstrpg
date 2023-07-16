function newenemy()
    enemy = {}
    enemy.x = 64
    enemy.y = 64 
    enemy.sprites = {33,34}
    enemy.animationsprite = 1
    enemy.animationcounter = 0
    enemy.movementcounter = 10
    enemy.idle = function(self)
        if self.animationsprite == 1  and self.animationcounter == 10 then
  	    self.animationsprite = 2
	    self.animationcounter = 0
        elseif self.animationsprite == 2 and self.animationcounter == 10 then
	    self.animationsprite = 1
	    self.animationcounter = 0
	end
	self.animationcounter += 1 
    end
    enemy.move = function(self)
	direction = flr(rnd(5))
	steps = flr(rnd(10) + 5)
	if direction == 0 and self.movementcounter >= 20 then
	    self.x -= 1
	    self.movementcounter = 0
	elseif direction == 1 and self.movementcounter >= 20 then
	    self.x += 1
	    self.movementcounter = 0
	elseif direction == 2 and self.movementcounter >= 20 then
	    self.y -= 1
	    self.movementcounter = 0
	elseif direction == 3 and self.movementcounter >= 20 then
	    self.y += 1
	    self.movementcounter = 0
	else
	   self.y += 0
	   self.x += 0
	end
	self.movementcounter += 1
    end
    enemy.stepmovement = function(self) 
	if self.movementcounter >= 0 then
	    self.x += 1
	    self.movementcounter -= 1
   	end     
    end
    enemy.draw = function(self)
	spr(self.sprites[self.animationsprite], self.x, self.y)
    end
    return enemy
end
