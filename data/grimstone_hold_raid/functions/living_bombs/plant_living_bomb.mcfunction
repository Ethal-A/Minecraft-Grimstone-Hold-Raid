tag @r[gamemode=!spectator, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add living_bomb_target
tellraw @a [{"text":"The Magispeller has planted a living bomb on ", "color":"red"}, {"selector":"@a[tag=living_bomb_target]"}]
execute as @a[tag=living_bomb_target] run effect give @s born_in_chaos_v1:living_bomb 30 0 false
tag @a remove living_bomb_target