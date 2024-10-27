# Setup raid state variables
scoreboard objectives add ghr.raid_ongoing dummy "Raid Ongoing"
scoreboard players set ghr.state ghr.raid_ongoing 1

scoreboard objectives add ghr.time_remaining_seconds dummy "Time Remaining (s)"
scoreboard players set ghr.state ghr.time_remaining_seconds 300

scoreboard objectives add ghr.round dummy "Raid Round"
scoreboard players set ghr.state ghr.round 1

scoreboard objectives add ghr.rep dummy "Raid Rep"
scoreboard players set ghr.state ghr.rep 1

scoreboard objectives add ghr.has_died deathCount
scoreboard objectives add ghr.respawn_countdown dummy

# Setup global variables
scoreboard objectives add ghr.players_remaining dummy "Players"
scoreboard objectives add ghr.hostiles_remaining dummy "Hostiles"
scoreboard players set ghr.state ghr.players_remaining 0
scoreboard players set ghr.state ghr.hostiles_remaining 0

# Setup individual variables
scoreboard objectives add ghr.individual_kills totalKillCount "Kills"
scoreboard objectives add ghr.individual_deaths deathCount "Deaths"

# Display scoreboard and display player kills in the player list next to their names
scoreboard objectives add ghr.scoreboard dummy "Raid"
scoreboard objectives setdisplay sidebar ghr.scoreboard
scoreboard objectives setdisplay list ghr.individual_kills

# Setup team for hostile mobs and the team rules
team add ghr_hostile_mobs
team modify ghr_hostile_mobs friendlyFire false

# Begin slow tick
function grimstone_hold_raid:slow_tick
function grimstone_hold_raid:very_slow_tick

# Change game rules
tellraw @a "Players will keep their inventory on death."
tellraw @a "Players will immediately respawn."
tellraw @a "Players will have a respawn delay and will respawn at the arena."
gamerule keepInventory true
gamerule doImmediateRespawn true