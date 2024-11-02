# Set variables
scoreboard players set ghr.state ghr.round 4
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round3/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 4"

# Run repeating function
function grimstone_hold_raid:round4/cave_spider_check

# Run reps
schedule function grimstone_hold_raid:round4/rep1 30s
schedule function grimstone_hold_raid:round4/rep2 50s

schedule function grimstone_hold_raid:round4/rep3 100s
schedule function grimstone_hold_raid:round4/rep4 120s

schedule function grimstone_hold_raid:round4/rep5 160s
schedule function grimstone_hold_raid:round4/rep6 190s

# Message players
tellraw @a {"text":"You dare challenge the Freakager...","color":"red"}