# TODO: Clean everything up
title @a title "Raid Complete"
tellraw @a {"text":"Congradulations on completing the Grimstone Hold Raid", "color": "yellow"}
scoreboard players set ghr.state ghr.raid_ongoing 0
function grimstone_hold_raid:finish/print_player_scores
function grimstone_hold_raid:finish/clear_all_ghr_schedule
schedule function grimstone_hold_raid:finish/generate_reward 10s
schedule function grimstone_hold_raid:clear 15s