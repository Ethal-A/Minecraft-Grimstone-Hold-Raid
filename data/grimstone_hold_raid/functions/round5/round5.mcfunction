# Set variables
scoreboard players set ghr.state ghr.round 5
scoreboard players set ghr.state ghr.rep 1

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 4"

# Run repeating function
function grimstone_hold_raid:round5/cave_spider_check

# Run reps
