# Set variables
scoreboard players set ghr.state ghr.round 2
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round1/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 2"

# Run reps
schedule function grimstone_hold_raid:round2/rep1 30s
schedule function grimstone_hold_raid:round2/rep2 50s

schedule function grimstone_hold_raid:round2/rep3 100s
schedule function grimstone_hold_raid:round2/rep4 130s

schedule function grimstone_hold_raid:round2/rep5 160s