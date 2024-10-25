# Set variables
scoreboard players set ghr.state ghr.round 1
scoreboard players set ghr.state ghr.rep 1

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a title "Round 1"

schedule function grimstone_hold_raid:round1/rep1 30s
schedule function grimstone_hold_raid:round1/rep2 60s
schedule function grimstone_hold_raid:round1/rep3 90s
schedule function grimstone_hold_raid:round1/rep4 150s
schedule function grimstone_hold_raid:round1/rep5 190s
schedule function grimstone_hold_raid:round1/rep6 250s

tellraw @a {"text":"You dare challenge the Spiritcaller...","color":"red"}