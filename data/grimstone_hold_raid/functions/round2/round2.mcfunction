# Set variables
scoreboard players set ghr.state ghr.round 2

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a title "Round 2"

schedule function grimstone_hold_raid:round2/rep1 10s