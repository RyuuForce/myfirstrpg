pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include main.lua
#include particles.lua
#include player.lua
#include enemies.lua

__gfx__
000000001ddd11111111ddd11dddd1111dddd1111ddd11111111ddd11dddd1110000000000000000000000000000000000000000000000000000000000000000
000000001ffdddd11ddddff11ddddddd1dffdddd1ffdddd11ddddff11dffdddd0000000000000000000000000000000000000000000000000000000000000000
007007001fffffddddfffff1ddddddddddfffffd1fffffddddfffff1ddfffffd0000000000000000000000000000000000000000000000000000000000000000
0007700010ff0fddddf0ff01dddddddddf0ff0fd10ff0fddddf0ff01df0ff0fd0000000000000000000000000000000000000000000000000000000000000000
000770001f00ffddddff00f1dddddddddff00ffd1f00ffddddff00f1dff00ffd0000000000000000000000000000000000000000000000000000000000000000
007007001dffffddddffffd1dddddddddddffffd1d00ffddddff00d1ddd00ffd0000000000000000000000000000000000000000000000000000000000000000
000000001dddddd11dddddd11ddddddd1ddddddd1dddddd11dddddd11ddddddd0000000000000000000000000000000000000000000000000000000000000000
00000000dd11dd1111dd11ddddd11dd1ddd11dd1dd11dd1111dd11ddddd11dd10000000000000000000000000000000000000000000000000000000000000000
00000000111111111111111111111111111111111111111111111111111111111111111111116111111001111110011111100111000000000000000000000000
00000000111111111111111111111111111111111111111111111111111111111111111111166111110000111100001111000011000000000000000000000000
00000000111111011111110111111101101111111011111110111111111111111116611111166111111001111110011111100111000000000000000000000000
00000000111160001166600066666000000611110006661100066661111111111116611111166111111661111116611111166111000000000000000000000000
00000000111160001166600016666000000611110006661100066666111661111116611111166111111111111116611111166111000000000000000000000000
00000000111111011111110111111101101111111011111110111111111001111110011111100111111111111116611111166111000000000000000000000000
00000000111111111111111111111111111111111111111111111111110000111100001111000011111111111111111111166111000000000000000000000000
00000000111111111111111111111111111111111111111111111111111001111110011111100111111111111111111111161111000000000000000000000000
00000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000111111111110001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000110000001100800100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000100888701008870000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888801088887000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800088888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbbbbbbbbbb555bbbb7bbbbbbbbbbbbb000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbb33bbbbbb6666bbb56665bb7a7bbbbbb7bbbbb000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbb3bbbbbb6666bbbb555bbbb7bbbbbb787bbbb000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbb3bbbbbbbbbbbbbbbbbbbbbbbbb7bbb7bbbbb000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbb33bbb3bbbbb666bbbbbbbbbbbbbb7a7bb33bb7b000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbb3bb3bbbbbbbbbbbbb55bbbbbbbbb7bbbb33787000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbb3bb3bbb66666bbbb5665bbbbbbbbbbbb3b337b000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbbbbbbbbbbbbb66bbbbb55bbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000000000000000000000000000000000000000
__map__
3131313131313131313131313131353100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131323131313431313136313132313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3531313131313131313131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313531313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313631313131313131363131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3132313131313231313131313134313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131343131313231313231313131353100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313131313131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313133333131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3132313136313133333131313131323100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313133363131313531313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313133323131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131323131343133333131323131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3136313131313233333131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313133333131313431323100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3134323136313133343131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3131313131313433313131313131313100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00100000196201c6201c6201e6202062022620236202462023620216201d6101a6101861017610166101661017610186101a6101b6101d6101f6102061022610246202562027620296202b6202c6202e6202f630
0010000030630316303164031630306302f6302e6202c620296202662024620216201f6201d6201c6201b6201a6201a610196101961019610186101861018610186101861018620196201a6201b6201d6201f630
000100000080017850198501b8501e8502085022850238502685027850298502b8502d8502f8503185033850378503a8503f8503f8003f800018000080027800248001e80018800198001c800008000080000800
__music__
01 00424344
02 01424344

