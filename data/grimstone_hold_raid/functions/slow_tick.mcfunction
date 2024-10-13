# Arena area and size:
# X: 8
# Y: 67
# Z: -12
# Distance: ..10

execute if score ghr.state ghr.raid_ongoing matches 1 run schedule function grimstone_hold_raid:slow_tick 1s

# Update display
scoreboard players operation RaidOngoing ghr.scoreboard = ghr.state ghr.raid_ongoing
scoreboard players operation PlayersRemaining ghr.scoreboard = ghr.state ghr.players_remaining
scoreboard players operation HostilesRemaining ghr.scoreboard = ghr.state ghr.hostiles_remaining
scoreboard players operation Kills ghr.scoreboard = @a ghr.individual_kills
scoreboard players operation Deaths ghr.scoreboard = @a ghr.individual_deaths

# Count number of players in arena
scoreboard players reset ghr.state ghr.players_remaining
scoreboard players reset ghr.state ghr.hostiles_remaining
execute as @a[x=207, y=309, z=-2, distance=..36] run scoreboard players add ghr.state ghr.players_remaining 1
execute as @e[tag=ghr_hostile] run scoreboard players add ghr.state ghr.hostiles_remaining 1

# Make hostiles glow if there is 5 or less of them
execute if score ghr.state ghr.hostiles_remaining matches ..5 run effect give @e[tag=ghr_hostile] glowing 30 0 true