palt(0, false)
palt(1, true)
grid_size = 1    
player = {}
player.x = 8
player.y = 8
player.dx = 1
player.dy = 1
player.direction = 1
player.sprite = {1,2,3,4}
player.weapon = {17,18,19,20}
player.draw = function(self)
    spr(self.sprite[self.direction], self.x * grid_size, self.y * grid_size)	
end
player.move = function(self)
    if btn(0) then
        self.x -= 1
	self.direction = 1
    elseif btn(1) then
	self.x += 1
	self.direction = 2
    elseif btn(2) then
	self.y -= 1
	self.direction = 3
    elseif btn(3) then
	self.y += 1
	self.direction = 4
    end
end
player.attack = function(self)
    if btn(4) then
	if self.direction == 1 then
	    spr(self.weapon[self.direction], (self.x - 8), self.y * grid_size)
	elseif self.direction == 2 then
	    spr(self.weapon[self.direction], (self.x + 8), self.y * grid_size)
	elseif self.direction == 3 then
	    spr(self.weapon[self.direction], self.x, (self.y - 8) * grid_size)
	elseif self.direction == 4 then
	    spr(self.weapon[self.direction], self.x, (self.y + 8) * grid_size)
	end
    end
end
