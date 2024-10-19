# Arena corner where all x,y,z increase and with the following distances:
# X: 185
# Y: 300
# Z: -25
# dx: 47
# dy: 19
# dz: 47
# Repeating on condition
execute if score ghr.state ghr.raid_ongoing matches 1 run schedule function grimstone_hold_raid:slow_tick 1s

# Update countdown time
execute if score ghr.state ghr.time_remaining_seconds matches 1.. run scoreboard players remove ghr.state ghr.time_remaining_seconds 1

# Count number of players in arena
scoreboard players reset ghr.state ghr.players_remaining
scoreboard players reset ghr.state ghr.hostiles_remaining
execute as @a[x=185, y=300, z=-25, dx=47, dy=19, dz=47] run scoreboard players add ghr.state ghr.players_remaining 1
execute as @e[tag=ghr_hostile, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run scoreboard players add ghr.state ghr.hostiles_remaining 1

# Update display
scoreboard players operation SecondsRemaining ghr.scoreboard = ghr.state ghr.time_remaining_seconds
scoreboard players operation PlayersRemaining ghr.scoreboard = ghr.state ghr.players_remaining
scoreboard players operation HostilesRemaining ghr.scoreboard = ghr.state ghr.hostiles_remaining
# Uncomment if you want to show individual kilsl and deaths on the sidebar
# scoreboard players operation Kills ghr.scoreboard = @a ghr.individual_kills
# scoreboard players operation Deaths ghr.scoreboard = @a ghr.individual_deaths

# Make hostiles glow if there is 5 or less of them
execute if score ghr.state ghr.hostiles_remaining matches ..5 run effect give @e[tag=ghr_hostile] glowing 5 0 true

# There are 6 reps in round 1
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 1 if score ghr.state ghr.rep matches 6 run function grimstone_hold_raid:round2/round2