# Set variables
scoreboard players set ghr.state ghr.round 3
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round2/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 3"

schedule function grimstone_hold_raid:round3/rep1 30s
schedule function grimstone_hold_raid:round3/rep2 50s
schedule function grimstone_hold_raid:round3/rep3 90s

schedule function grimstone_hold_raid:round3/rep4 160s

schedule function grimstone_hold_raid:round3/rep5 200s