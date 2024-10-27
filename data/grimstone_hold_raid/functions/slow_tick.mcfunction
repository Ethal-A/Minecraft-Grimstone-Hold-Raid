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
execute as @a[x=185, y=300, gamemode=!spectator,z=-25, dx=47, dy=19, dz=47] run scoreboard players add ghr.state ghr.players_remaining 1
execute as @e[tag=ghr_hostile, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run scoreboard players add ghr.state ghr.hostiles_remaining 1

# Update display
scoreboard players operation SecondsRemaining ghr.scoreboard = ghr.state ghr.time_remaining_seconds
scoreboard players operation PlayersRemaining ghr.scoreboard = ghr.state ghr.players_remaining
scoreboard players operation HostilesRemaining ghr.scoreboard = ghr.state ghr.hostiles_remaining
# Uncomment if you want to show individual kills and deaths on the sidebar
# scoreboard players operation Kills ghr.scoreboard = @a ghr.individual_kills
# scoreboard players operation Deaths ghr.scoreboard = @a ghr.individual_deaths

# Make hostiles glow if there is 10 or less of them
execute if score ghr.state ghr.hostiles_remaining matches ..10 run effect give @e[tag=ghr_hostile] glowing 5 0 true

# There are 6 reps in round 1
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 1 if score ghr.state ghr.rep matches 6 run function grimstone_hold_raid:round2/round2

# There are 5 reps in round 2
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 2 if score ghr.state ghr.rep matches 5 run function grimstone_hold_raid:round3/round3

# There are 5 reps in round 3
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 3 if score ghr.state ghr.rep matches 5 run function grimstone_hold_raid:round4/round4

# There are 6 reps in round 4
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 4 if score ghr.state ghr.rep matches 6 run function grimstone_hold_raid:round5/round5

# There are 5 reps in round 5
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 5 if score ghr.state ghr.rep matches 5 run function grimstone_hold_raid:round6/round6

# There are 4 reps in round 6
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 6 if score ghr.state ghr.rep matches 4 run function grimstone_hold_raid:round7/round7

# There are 6 reps in round 7
execute if score ghr.state ghr.hostiles_remaining matches 0 if score ghr.state ghr.round matches 7 if score ghr.state ghr.rep matches 6 run function grimstone_hold_raid:finish/success

# Handle respawns
execute as @a[scores={ghr.has_died=1}] run function grimstone_hold_raid:util/player_death_handler
scoreboard players remove @e[scores={ghr.respawn_countdown=1..}] ghr.respawn_countdown 1

execute as @a[scores={ghr.respawn_countdown=30}] run tellraw @s "30 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=20}] run tellraw @s "20 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=10}] run tellraw @s "10 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=5}] run tellraw @s "5 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=4}] run tellraw @s "4 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=3}] run tellraw @s "3 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=2}] run tellraw @s "2 seconds until respawn"
execute as @a[scores={ghr.respawn_countdown=1}] run tellraw @s "1 seconds until respawn"

execute as @a[scores={ghr.respawn_countdown=..0}] run tp 210 310 -3
execute as @a[scores={ghr.respawn_countdown=..0}] run gamemode survival
execute as @a[scores={ghr.respawn_countdown=..0}] run tellraw @s "Respawned"
execute as @a[scores={ghr.respawn_countdown=..0}] run effect give @s resistance 5 10 true
execute as @a[scores={ghr.respawn_countdown=..0}] run scoreboard players reset @s ghr.respawn_countdown