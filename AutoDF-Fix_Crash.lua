-- Auto DF by PowerKuy
-- Selling this script is Illegal
-- This script is free


--------------Enable ModFly
EditToggle("ModFly", true)


-------------Function For Breaking Block
function BreakBlock(x , y)do
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.x = x*32;
pkt.y = (y-2)*32;
pkt.type = 3;
pkt.value = 18;
SendPacketRaw (false, pkt);
Sleep(180)
end
end


-----------Checking World Tiles
function findingdirt()
do
for _, tile in pairs(GetTiles())
do
if(tile.y %2 == 1) or tile.x == 0 or tile.x == 1 or tile.x ==99 or tile.x == 98 then
if(tile.fg == 2) or (tile.bg == 14 and tile.fg == 0) or (tile.fg == 10) or (tile.fg == 4)
then
if(FindPath(tile.x, tile.y-2) == false)
then
BreakBlock(tile.x, tile.y)
break
end
end
end
end
end
end

----------Start Program
while true do
pcall(findingdirt(), 1)
end
