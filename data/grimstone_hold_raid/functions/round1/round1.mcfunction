# Set variables
scoreboard players set ghr.state ghr.round 1

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a title "Round 1"

schedule function grimstone_hold_raid:round1/rep1 10s