# Stop count
scoreboard players set ghr.state ghr.raid_ongoing 0

# Clear display
scoreboard objectives remove ghr.scoreboard

# Clear state vairables
scoreboard objectives remove ghr.raid_ongoing
scoreboard objectives remove ghr.time_remaining_seconds
scoreboard objectives remove ghr.round
scoreboard objectives remove ghr.rep

# Clear all raid variables
scoreboard objectives remove ghr.players_remaining
scoreboard objectives remove ghr.hostiles_remaining
scoreboard objectives remove ghr.individual_kills
scoreboard objectives remove ghr.individual_deaths
scoreboard objectives remove ghr.respawn_countdown
scoreboard objectives remove ghr.has_died

# Remove teams
team remove ghr_hostile_mobs

# Reset gamerule
tellraw @a "Players now lose their inventory on death (like normal)."
tellraw @a "Players not instantly respawn on death (like normal)."
tellraw @a "Players not have a respawn timer (like normal)."
gamerule keepInventory false
gamerule doImmediateRespawn false

# Clear schedule
schedule clear grimstone_hold_raid:slow_tick
# schedule clear ...