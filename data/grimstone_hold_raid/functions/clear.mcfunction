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

# Reset gamerule
tellraw @a "Players now lose their inventory on death (like normal)."
gamerule keepInventory false