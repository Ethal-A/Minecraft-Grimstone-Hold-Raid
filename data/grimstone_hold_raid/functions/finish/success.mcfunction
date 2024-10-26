# TODO: Clean everything up
title @a title "Raid Complete"
tellraw @a "Congradulations on completing the Grimstone Hold Raid"
scoreboard players set ghr.state ghr.raid_ongoing 0
function grimstone_hold_raid:finish/print_player_scores
function grimstone_hold_raid:finish/clear_all_ghr_schedule