# Set variables
scoreboard players set ghr.state ghr.round 5
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round4/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 5"

# Run repeating function
function grimstone_hold_raid:round5/cave_spider_check
schedule function grimstone_hold_raid:round5/rep1 30s
schedule function grimstone_hold_raid:round5/rep2 40s
schedule function grimstone_hold_raid:round5/rep3 50s
schedule function grimstone_hold_raid:round5/rep4 60s
schedule function grimstone_hold_raid:round5/rep5 70s