# Set variables
scoreboard players set ghr.state ghr.round 1
scoreboard players set ghr.state ghr.rep 1

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 300

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+5 Minutes"
title @a title "Round 1"

# Schedule reps
schedule function grimstone_hold_raid:round1/rep1 10s
schedule function grimstone_hold_raid:round1/rep2 20s
schedule function grimstone_hold_raid:round1/rep3 50s

schedule function grimstone_hold_raid:round1/rep4 110s
schedule function grimstone_hold_raid:round1/rep5 140s
schedule function grimstone_hold_raid:round1/rep6 170s

tellraw @a {"text":"You dare challenge the Spiritcaller...","color":"red"}