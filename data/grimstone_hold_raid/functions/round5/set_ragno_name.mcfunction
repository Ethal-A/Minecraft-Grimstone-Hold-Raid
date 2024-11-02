tag @e[type=illageandspillage:ragno, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add ghr_hostile
tag @e[type=illageandspillage:ragno, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add ghr_boss
data merge entity @e[type=illageandspillage:ragno, tag=ghr_boss, limit=1] {CustomName:"Ragno"} 
effect give @e[type=illageandspillage:ragno, tag=ghr_boss] minecraft:regeneration infinite 2 true
health set @e[name="Ragno"] 2000

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true