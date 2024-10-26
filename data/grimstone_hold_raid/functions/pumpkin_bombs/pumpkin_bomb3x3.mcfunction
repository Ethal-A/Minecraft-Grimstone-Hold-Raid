tag @r[gamemode=!spectator, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add pumpkin_bomb_target

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~
execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~1
execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~-1

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~1

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~1

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~-1

execute as @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~-1

team join ghr_hostile_mobs @e[type=illageandspillage:pumpkin_bomb]
tag @a remove pumpkin_bomb_target