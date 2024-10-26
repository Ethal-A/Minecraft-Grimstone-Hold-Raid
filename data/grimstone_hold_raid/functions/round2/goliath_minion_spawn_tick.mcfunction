execute if entity @e[name="Goliath"] run schedule function grimstone_hold_raid:round2/goliath_minion_spawn_tick 20s
execute at @e[name="Goliath"] run summon illagerinvasion:marauder ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Marauder Minion"}]', HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f], ForgeData: {InfernalMobsMod: ""}}
execute at @e[name="Goliath"] run summon illagerinvasion:marauder ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Marauder Minion"}]', HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f], ForgeData: {InfernalMobsMod: ""}}
execute at @e[name="Goliath"] run summon illagerinvasion:marauder ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Marauder Minion"}]', HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f], ForgeData: {InfernalMobsMod: ""}}
scale set pehkui:height 0.5 @e[tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[tag=ghr_boss_minion]

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]