execute if score ghr.state ghr.round matches 3 if entity @e[name="Spiritcaller", tag=ghr_boss] run schedule function grimstone_hold_raid:round3/spiritcaller_minion_spawn_tick 120s
execute if score ghr.state ghr.round matches 3 if entity @e[name="Spiritcaller", tag=ghr_boss] run function grimstone_hold_raid:round3/spiritcaller_support_spawn