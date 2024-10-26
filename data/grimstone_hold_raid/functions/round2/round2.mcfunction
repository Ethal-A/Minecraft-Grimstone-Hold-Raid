# Set variables
scoreboard players set ghr.state ghr.round 2
scoreboard players set ghr.state ghr.rep 1

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 2"

# Run reps
schedule function grimstone_hold_raid:round2/rep1 60s
schedule function grimstone_hold_raid:round2/rep2 90s
schedule function grimstone_hold_raid:round2/rep3 150s
schedule function grimstone_hold_raid:round2/rep4 180s