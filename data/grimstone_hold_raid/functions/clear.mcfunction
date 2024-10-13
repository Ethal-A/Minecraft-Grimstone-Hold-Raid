# Stop count
scoreboard players set ghr.state ghr.raid_ongoing 0

# Clear state vairables
scoreboard objectives remove ghr.raid_ongoing

# Clear display
scoreboard objectives remove ghr.scoreboard

# Clear all raid variables
scoreboard objectives remove ghr.players_remaining
scoreboard objectives remove ghr.hostiles_remaining
scoreboard objectives remove ghr.individual_kills
scoreboard objectives remove ghr.individual_deaths

# Clear gamerules
scoreboard objectives remove ghr.gamerule.x
scoreboard objectives remove ghr.gamerule.y
scoreboard objectives remove ghr.gamerule.z
scoreboard objectives remove ghr.gamerule.distance