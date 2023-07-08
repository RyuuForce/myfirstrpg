function newparticle()
    particle = {}
    particle.x = rnd(129)
    particle.y = -10
    particle.yvel = rnd(3) + 1
    particle.xvel = rnd(1)
    particle.size = rnd(3) + 1
    particle.life = particle.size * 9
    particle.col = rnd(3) + 8
    return particle
end
