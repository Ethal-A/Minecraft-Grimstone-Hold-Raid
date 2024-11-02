# Set variables
scoreboard players set ghr.state ghr.round 7
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round6/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 660

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+11 Minutes"
title @a title "Round 7"

# Run reps
schedule function grimstone_hold_raid:round7/rep1 30s
schedule function grimstone_hold_raid:round7/rep2 40s
schedule function grimstone_hold_raid:round7/rep3 61s

schedule function grimstone_hold_raid:round7/rep4 91s

schedule function grimstone_hold_raid:round7/rep5 110s
schedule function grimstone_hold_raid:round7/rep6 140s