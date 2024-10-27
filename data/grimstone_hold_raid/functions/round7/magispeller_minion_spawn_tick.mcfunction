execute if entity @e[name="Magispeller", tag=ghr_boss] run schedule function grimstone_hold_raid:round7/magispeller_minion_spawn_tick 20s
execute at @e[name="Magispeller"] run summon ravager ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', Health:20, Attributes:[{Name:"generic.max_health",Base:20f}], ForgeData: {InfernalMobsMod: "notInfernal"}}
execute at @e[name="Magispeller"] run summon ravager ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', Health:20, Attributes:[{Name:"generic.max_health",Base:20f}], ForgeData: {InfernalMobsMod: "notInfernal"}}
execute at @e[name="Magispeller"] run summon ravager ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', Health:20, Attributes:[{Name:"generic.max_health",Base:20f}], ForgeData: {InfernalMobsMod: "notInfernal"}}
execute at @e[name="Magispeller"] run summon illageandspillage:illashooter ~-3 ~ ~-3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', ForgeData: {InfernalMobsMod: "notInfernal"}}
execute at @e[name="Magispeller"] run summon illageandspillage:illashooter ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', ForgeData: {InfernalMobsMod: "notInfernal"}}
execute at @e[name="Magispeller"] run summon illageandspillage:dispenser ~ ~2 ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Magispeller Minion"}]', ForgeData: {InfernalMobsMod: "notInfernal"}}

# Effect mobs
scale set pehkui:height 0.5 @e[type=ravager, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=ravager, tag=ghr_boss_minion]

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]

function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection