# Repeating on condition
execute if score ghr.state ghr.raid_ongoing matches 1 run schedule function grimstone_hold_raid:slow_tick 1s

# Update countdown time
execute if score ghr.state ghr.time_remaining_seconds matches 1.. run scoreboard players remove ghr.state ghr.time_remaining_seconds 1

# Count number of players in arena
scoreboard players reset ghr.state ghr.players_remaining
scoreboard players reset ghr.state ghr.hostiles_remaining
execute as @a[gamemode=!spectator, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run scoreboard players add ghr.state ghr.players_remaining 1
execute as @e[tag=ghr_hostile, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run scoreboard players add ghr.state ghr.hostiles_remaining 1

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
execute as @a[scores={ghr.respawn_countdown=..0}] run function grimstone_hold_raid:util/respawn_player

# Handle failure (check that it is ongoing because otherwise these functions may execute twice and it could also execute when the raid is finished)
# execute if score ghr.state ghr.raid_ongoing matches 1 if score ghr.state ghr.players_remaining matches 0 run function grimstone_hold_raid:finish/failure
# execute if score ghr.state ghr.raid_ongoing matches 1 if score ghr.state ghr.time_remaining_seconds matches ..0 run function grimstone_hold_raid:finish/failure