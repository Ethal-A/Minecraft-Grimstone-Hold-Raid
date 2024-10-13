# Setup gamerules and load them in
scoreboard objectives add ghr.gamerule.x dummy
scoreboard objectives add ghr.gamerule.y dummy
scoreboard objectives add ghr.gamerule.z dummy
scoreboard objectives add ghr.gamerule.distance dummy
function grimstone_hold_raid:gamerules

# Setup raid state variables
scoreboard objectives add ghr.raid_ongoing dummy "Raid Ongoing"
scoreboard players set ghr.state ghr.raid_ongoing 1

# Setup global variables
scoreboard objectives add ghr.players_remaining dummy "Players"
scoreboard objectives add ghr.hostiles_remaining dummy "Hostiles"
scoreboard players set ghr.state ghr.players_remaining 0
scoreboard players set ghr.state ghr.hostiles_remaining 0

# Setup individual variables
scoreboard objectives add ghr.individual_kills totalKillCount "Kills"
scoreboard objectives add ghr.individual_deaths deathCount "Deaths"

# Display scoreboard
scoreboard objectives add ghr.scoreboard dummy "Raid"
scoreboard objectives setdisplay sidebar ghr.scoreboard

# Begin slow tick
function grimstone_hold_raid:slow_tick