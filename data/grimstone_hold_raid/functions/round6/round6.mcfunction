# Set variables
scoreboard players set ghr.state ghr.round 6
scoreboard players set ghr.state ghr.rep 1

# Clear previous schedule
function grimstone_hold_raid:round5/clear_schedule

# Update countdown time
scoreboard players add ghr.state ghr.time_remaining_seconds 360

# Display and notify player
playsound illageandspillage:entity.boss_randomizer.boss master @a
title @a subtitle "+6 Minutes"
title @a title "Round 6"

# Run reps
schedule function grimstone_hold_raid:round6/rep1 30s
schedule function grimstone_hold_raid:round6/rep2 40s

schedule function grimstone_hold_raid:round6/rep3 80s
schedule function grimstone_hold_raid:round6/rep4 90s

# Message players
tellraw @a {"text":"You've peaked the interest of the Magispeller...","color":"red"}
tellraw @a {"text":"The Magispeller grants blast protection and additional armor to all their followers","color":"red"}
tellraw @a [{"text":"The Magispeller calls on the creatures of the ","color":"red"}, {"text":"darkness", "color":"black"}]