# Centre: 207 301 -3
tellraw @a {"text": "Loot has been placed in the arena", "color": "yellow"}
function grimstone_hold_raid:finish/spawn_firework
schedule function grimstone_hold_raid:finish/spawn_firework 5s

setblock 207 301 -2 chest{LootTable:"chests/woodland_mansion"} replace
setblock 207 301 -3 chest{LootTable:"chests/woodland_mansion"} replace
setblock 207 301 -4 chest{LootTable:"chests/woodland_mansion"} replace

setblock 208 301 -2 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 208 301 -3 chest{LootTable:"chests/pillager_outpost"} replace
setblock 208 301 -4 chest{LootTable:"chests/pillager_outpost"} replace

setblock 206 301 -2 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 206 301 -3 chest{LootTable:"chests/stronghold_library"} replace
setblock 206 301 -4 chest{LootTable:"chests/stronghold_corridor"} replace