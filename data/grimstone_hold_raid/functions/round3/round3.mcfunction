# Set variables
scoreboard players set ghr.state ghr.round 3
scoreboard players set ghr.state ghr.rep 1

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 3"

schedule function grimstone_hold_raid:round3/rep1 60s
schedule function grimstone_hold_raid:round3/rep2 90s
schedule function grimstone_hold_raid:round3/rep3 120s
schedule function grimstone_hold_raid:round3/rep4 150s
schedule function grimstone_hold_raid:round3/rep5 190s
schedule function grimstone_hold_raid:round3/spiritcaller_support_tick 240s