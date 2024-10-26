# Set variables
scoreboard players set ghr.state ghr.round 7
scoreboard players set ghr.state ghr.rep 1

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 7"

# Run reps
schedule function grimstone_hold_raid:round7/rep1 60s
schedule function grimstone_hold_raid:round7/rep2 900s
schedule function grimstone_hold_raid:round7/rep3 120s
schedule function grimstone_hold_raid:round7/rep4 150s
schedule function grimstone_hold_raid:round7/rep5 180s
schedule function grimstone_hold_raid:round7/rep6 210s