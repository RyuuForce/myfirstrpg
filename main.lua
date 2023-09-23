function _init()
    particles = {}
    music(0)
    for i = 0, 10 do
        add(particles, newparticle())
    end
    blob = newenemy()
    directionPickTimer = 30
    enemypause = false
end

function _update()
    player:move()
    if directionPickTimer <= 0 and enemypause == false then
      direction = flr(rnd(5))
      directionPickTimer = 10
      enemypause = true
    elseif directionPickTimer <= 0 and enemypause == true then
      direction = 5
      directionPickTimer = 30
      enemypause = false
    end
    directionPickTimer -= 1
    blob:stepmovement(direction)
    for p in all(particles) do
        p.x += p.xvel
        p.y += p.yvel
        p.life -= 1
        if p.life <= 0 then
            del(particles, p)
            add(particles, newparticle())
        end
    end
end

function _draw()
    cls(1)
    map(0,0,0,0,18,18)
    --circfill(x,y,12,9)
    for p in all(particles) do
        circfill(p.x, p.y, p.size, p.col)
    end
    player:draw()
    player:attack()
    blob:draw()
    blob:idle()
end
