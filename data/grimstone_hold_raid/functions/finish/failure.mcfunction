title @a title {"text":"Raid Failed","bold":true,"color":"red"}
tellraw @a {"text":"You failed to complete the Grimstone Hold Raid", "color": "red"}

execute as @a[gamemode=spectator] run function grimstone_hold_raid:util/respawn_player
stopsound @a music
playsound spore:rebirth music @a

scoreboard players set ghr.state ghr.raid_ongoing 0
function grimstone_hold_raid:finish/clear_mobs_and_items
function grimstone_hold_raid:finish/clear_all_ghr_schedule

schedule function grimstone_hold_raid:finish/print_player_scores 10s
schedule function grimstone_hold_raid:clear 20s