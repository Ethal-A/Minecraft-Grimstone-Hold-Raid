# Assign the player a respawn countdown (in seconds)
scoreboard players set @s ghr.respawn_countdown 60
scoreboard players reset @s ghr.has_died
gamemode spectator @s
tp 5074 306 -2081
title @s title "Respawn in 60s"
tellraw @s "60 seconds until respawn"