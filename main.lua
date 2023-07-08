function _init()
    particles = {}
    music(0)
    for i = 0, 10 do
        add(particles, newparticle())
    end
    blob = newenemy()
end

function _update()
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
    player:move()
    player:attack()
    blob:draw()
    blob:move()
    blob:idle()
end
