function breakrr(x , y)do
pkt = {}
pkt.px = x;
pkt.py = y;
pkt.x = x*32;
pkt.y = (y-1)*32;
pkt.type = 3;
pkt.value = 18;
SendPacketRaw (false, pkt);
Sleep(180)
findingdirt()
end
end

function findingdirt()
do
for _, tile in pairs(GetTiles())
do
if(tile.fg == 2) or (tile.bg == 14 and tile.fg == 0) or (tile.fg == 10) or (tile.fg == 4)
then
if(FindPath(tile.x, tile.y-1) == false)
then
breakrr(tile.x, tile.y)
break
end
end
end
end
end

findingdirt()