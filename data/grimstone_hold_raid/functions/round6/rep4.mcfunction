# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 6, Rep 4 (final rep)"

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:kaboomers/kaboomer 5s
schedule function grimstone_hold_raid:dispensers/dispenser 15s
schedule function grimstone_hold_raid:kaboomers/kaboomer 40s
schedule function grimstone_hold_raid:kaboomers/kaboomer 60s

# Spawn boss area: 210 310 -3
summon irons_spellbooks:archevoker 210 310 -3
tag @e[type=irons_spellbooks:archevoker, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_hostile
tag @e[type=irons_spellbooks:archevoker, x=185, y=300, z=-25, dx=47, dy=19, dz=47] add ghr_boss
health set @e[type=irons_spellbooks:archevoker, tag=ghr_boss] 500
effect give @e[type=irons_spellbooks:archevoker, tag=ghr_boss] minecraft:regeneration infinite 3 true
effect give @e[type=irons_spellbooks:archevoker, tag=ghr_boss] minecraft:strength infinite 3 true

# Spawn area 1: 226 311 16
summon illageandspillage:twittollager 226 311 16 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}
summon illageandspillage:igniter 226 311 16 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:preserver 226 311 16 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 illagerinvasion:inquisitor 226 311 16 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 2: 190 309 14
summon minecraft:vindicator 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon illageandspillage:twittollager 190 309 14 {Tags:["ghr_hostile"]}
summon ravager 190 309 14 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 1 2 2 pillager 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Spawn area 3: 192 309 -18
summon illageandspillage:twittollager 192 309 -18 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}
summon illageandspillage:igniter 192 309 -18 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:preserver 192 309 -18 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 illagerinvasion:inquisitor 192 309 -18 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 4: 225 309 -19
summon minecraft:vindicator 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon illageandspillage:twittollager 225 309 -19 {Tags:["ghr_hostile"]}
summon ravager 225 309 -19 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 1 2 2 pillager 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Adjust mobs
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]