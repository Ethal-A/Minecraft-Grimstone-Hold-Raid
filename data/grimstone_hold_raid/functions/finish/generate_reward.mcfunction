# Centre: 5074 299 -2081
tellraw @a {"text": "Loot has been placed in the arena", "color": "yellow"}
function grimstone_hold_raid:finish/spawn_firework
schedule function grimstone_hold_raid:finish/spawn_firework 5s

setblock 5074 299 -2080 chest{LootTable:"chests/woodland_mansion"} replace
setblock 5074 299 -2081 chest{LootTable:"chests/woodland_mansion"} replace
setblock 5074 299 -2082 chest{LootTable:"chests/woodland_mansion"} replace

setblock 5075 299 -2080 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 5075 299 -2081 chest{LootTable:"chests/pillager_outpost"} replace
setblock 5075 299 -2082 chest{LootTable:"chests/pillager_outpost"} replace

setblock 5073 299 -2080 chest{LootTable:"chests/abandoned_mineshaft"} replace
setblock 5073 299 -2081 chest{LootTable:"chests/stronghold_library"} replace
setblock 5073 299 -2082 chest{LootTable:"chests/stronghold_corridor"} replace