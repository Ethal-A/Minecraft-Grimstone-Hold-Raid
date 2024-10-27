title @a title {"text":"Raid Completed","bold":true,"color":"yellow"}
tellraw @a {"text":"Congradulations on completing the Grimstone Hold Raid", "color": "yellow"}

execute as @a[gamemode=spectator] run function grimstone_hold_raid:util/respawn_player
stopsound @a music
playsound minecraft:ui.toast.challenge_complete music @a

scoreboard players set ghr.state ghr.raid_ongoing 0
function grimstone_hold_raid:finish/clear_all_ghr_schedule

schedule function grimstone_hold_raid:finish/print_player_scores 10s
schedule function grimstone_hold_raid:finish/generate_reward 15s
schedule function grimstone_hold_raid:clear 20s