# Set variables
scoreboard players set ghr.state ghr.round 2

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 600

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+10 Minutes"
title @a title "Round 2"

schedule function grimstone_hold_raid:round2/rep1 30s