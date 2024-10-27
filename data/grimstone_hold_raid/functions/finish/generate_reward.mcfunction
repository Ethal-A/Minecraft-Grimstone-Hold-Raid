# Centre: 207 301 -3
tellraw @a {"text": "Loot has been placed at 207 301 -3", "color": "yellow"}
summon firework_rocket 207 302 -2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386,2437522,14602026],FadeColors:[I;1973019,2437522,4312372,14602026]}]}}}}
summon firework_rocket 207 302 -3 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386,2437522,14602026],FadeColors:[I;1973019,2437522,4312372,14602026]}]}}}}
summon firework_rocket 207 302 -4 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386,2437522,14602026],FadeColors:[I;1973019,2437522,4312372,14602026]}]}}}}
summon firework_rocket 208 302 -3 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386,2437522,14602026],FadeColors:[I;1973019,2437522,4312372,14602026]}]}}}}
summon firework_rocket 206 302 -3 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386,2437522,14602026],FadeColors:[I;1973019,2437522,4312372,14602026]}]}}}}

setblock 207 301 -2 chest{LootTable:"chests/woodland_mansion"} replace
setblock 207 301 -3 chest{LootTable:"chests/woodland_mansion"} replace
setblock 207 301 -4 chest{LootTable:"chests/woodland_mansion"} replace

setblock 208 301 -2 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 208 301 -3 chest{LootTable:"chests/pillager_outpost"} replace
setblock 208 301 -4 chest{LootTable:"chests/pillager_outpost"} replace

setblock 206 301 -2 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 206 301 -3 chest{LootTable:"chests/stronghold_library"} replace
setblock 206 301 -4 chest{LootTable:"chests/stronghold_corridor"} replace

