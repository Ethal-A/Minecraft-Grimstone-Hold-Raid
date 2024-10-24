# TODO: Test
# Arena corner where all x,y,z increase and with the following distances:
# X: 185
# Y: 300
# Z: -25
# dx: 47
# dy: 19
# dz: 47
tag @e[type=illageandspillage:ragno, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_hostile
tag @e[type=illageandspillage:ragno, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_boss
effect give @e[type=illageandspillage:ragno, tag=ghr_boss] minecraft:regeneration infinite 2 true
