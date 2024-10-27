# Set variables
scoreboard players set ghr.state ghr.round 3
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round2/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 660

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+11 Minutes"
title @a title "Round 3"

schedule function grimstone_hold_raid:round3/rep1 60s
schedule function grimstone_hold_raid:round3/rep2 90s
schedule function grimstone_hold_raid:round3/rep3 120s

schedule function grimstone_hold_raid:round3/rep4 210s

schedule function grimstone_hold_raid:round3/rep5 360s