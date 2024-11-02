# Set variables
scoreboard players set ghr.state ghr.rep 6

# Inform the player
tellraw @a "Round 1, Rep 6 (final rep)"

# Random imps
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 6s
schedule function grimstone_hold_raid:imps/cross9 8s
schedule function grimstone_hold_raid:imps/cross9 10s
schedule function grimstone_hold_raid:imps/cross9 16s
schedule function grimstone_hold_raid:imps/square7x7 2s
schedule function grimstone_hold_raid:imps/square7x7 4s

# Spawn boss area: 5074 308 -2081
summon irons_spellbooks:archevoker 5074 308 -2081
tag @e[type=irons_spellbooks:archevoker, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add ghr_hostile
tag @e[type=irons_spellbooks:archevoker, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] add ghr_boss
health set @e[type=irons_spellbooks:archevoker, tag=ghr_boss] 800
effect give @e[type=irons_spellbooks:archevoker, tag=ghr_boss] minecraft:regeneration infinite 3 true
effect give @e[type=irons_spellbooks:archevoker, tag=ghr_boss] minecraft:strength infinite 3 true

# Spawn area 1: 5055 308 -2100
multisummon spread 1 2 2 illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5055 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
summon illagerinvasion:provoker 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 2: 5093 308 -2100
multisummon spread 1 2 2 illagerinvasion:inquisitor 5093 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5093 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
summon illagerinvasion:provoker 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 3: 5055 308 -2062
multisummon spread 1 2 2 illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5055 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
summon illagerinvasion:provoker 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 4: 5093 308 -2062
multisummon spread 1 2 2 illagerinvasion:inquisitor 5093 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5093 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
summon illagerinvasion:provoker 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]