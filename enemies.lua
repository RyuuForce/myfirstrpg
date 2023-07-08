function newenemy()
    enemy = {}
    enemy.x = 100
    enemy.y = 100
    enemy.sprites = {33,34}
    enemy.animationsprite = 1
    enemy.animationcounter = 0
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
        self.x -= 1
    end
    enemy.draw = function(self)
	spr(self.sprites[self.animationsprite], self.x, self.y)
    end
    return enemy
end
