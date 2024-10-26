tag @r[gamemode=!spectator, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add living_bomb_target
tellraw @a [{"text":"The Magispeller has planted a living bomb on ", "color":"red"}, {"selector":"@a[tag=living_bomb_target]"}]
execute as @a[tag=living_bomb_target] run effect give @s born_in_chaos_v1:living_bomb 30 0 false
tag @a remove living_bomb_target