tag @e[type=illageandspillage:ragno, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_hostile
tag @e[type=illageandspillage:ragno, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_boss
data merge entity @e[type=illageandspillage:ragno, tag=ghr_boss, limit=1] {CustomName:"Ragno"} 
effect give @e[type=illageandspillage:ragno, tag=ghr_boss] minecraft:regeneration infinite 2 true
health set @e[name="Ragno"] 3000

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true