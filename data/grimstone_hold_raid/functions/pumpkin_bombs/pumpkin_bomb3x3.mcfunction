tag @r[gamemode=!spectator, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add pumpkin_bomb_target

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~
execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~1
execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~ ~10 ~-1

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~1

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~1

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~-1 ~10 ~-1

execute at @a[tag=pumpkin_bomb_target] run summon illageandspillage:pumpkin_bomb ~1 ~10 ~-1

team join ghr_hostile_mobs @e[type=illageandspillage:pumpkin_bomb]
tag @a remove pumpkin_bomb_target