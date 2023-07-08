pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include main.lua
#include particles.lua
#include player.lua
#include enemies.lua

__gfx__
000000001ddd11111111ddd11dddd1111dddd111bbbbbbbbbbbbbbbbbbbbbbbbbbb555bbbb7bbbbbbbbbbbbb0000000000000000000000000000000000000000
000000001ffdddd11ddddff11ddddddd1dffddddbbbbbbbbbbb33bbbbbb6666bbb56665bb7a7bbbbbb7bbbbb0000000000000000000000000000000000000000
007007001fffffddddfffff1ddddddddddfffffdbbbbbbbbbbbb3bbbbbb6666bbbb555bbbb7bbbbbb787bbbb0000000000000000000000000000000000000000
0007700010ff0fddddf0ff01dddddddddf0ff0fdbbbbbbbbbbbb3bbbbbbbbbbbbbbbbbbbbbbbbb7bbb7bbbbb0000000000000000000000000000000000000000
000770001f00ffddddff00f1dddddddddff00ffdbbbbbbbbb33bbb3bbbbb666bbbbbbbbbbbbbb7a7bb33bb7b0000000000000000000000000000000000000000
007007001dffffddddffffd1dddddddddddffffdbbbbbbbbbb3bb3bbbbbbbbbbbbb55bbbbbbbbb7bbbb337870000000000000000000000000000000000000000
000000001dddddd11dddddd11ddddddd1dddddddbbbbbbbbbb3bb3bbb66666bbbb5665bbbbbbbbbbbb3b337b0000000000000000000000000000000000000000
00000000dd11dd1111dd11ddddd11dd1ddd11dd1bbbbbbbbbbbbbbbbbbbb66bbbbb55bbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
00000000111111111111111111116111111001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111111111111166111110000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111011011111111166111111001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666660000006666111166111111661110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000166660000006666611166111111661110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111011011111111100111111661110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111111111111000011111661110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111111111111100111111611110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111110001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000110000001100800100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000100888701008870000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888801088887000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800088888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0505050505050505050505050505090500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050506050505080505050a050506050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0905050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050905050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050a050505050505050a0505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0506050505050605050505050508050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505080505050605050605050505090500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050507070505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050605050a050507070505050505060500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05050505050505070a0505050905050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050507060505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505060505080507070505060505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050a050505050607070505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050507070505050805060500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050806050a050507080505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050807050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00100000196301c6301c6301e6302063022630236302463023630216301d6201a6201862017620166201662017620186201a6201b6201d6201f6202062022620246302563027630296302b6302c6302e6302f640
0010000030640316403165031640306402f6402e6302c630296302663024630216301f6301d6301c6301b6301a6301a620196201962019620186201862018620186201862018630196301a6301b6301d6301f640
__music__
01 00424344
02 01424344
