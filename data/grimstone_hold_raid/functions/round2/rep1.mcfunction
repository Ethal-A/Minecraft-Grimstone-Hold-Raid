# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 2, Rep 1"
title @a reset

# Spawn boss area: 210 310 -3
summon illageandspillage:absorber 210 310 -3 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Goliath"}]', Attributes:[{Name:"generic.max_health",Base:500f}], Health:500, ForgeData: {InfernalMobsMod: ""}}
effect give @e[type=illageandspillage:absorber, tag=ghr_boss] minecraft:speed infinite 8 true
effect give @e[type=illageandspillage:absorber, tag=ghr_boss] minecraft:strength infinite 20 true
scale set pehkui:height 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:width 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:interaction_box_height 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:interaction_box_width 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
function grimstone_hold_raid:round2/goliath_minion_spawn_tick