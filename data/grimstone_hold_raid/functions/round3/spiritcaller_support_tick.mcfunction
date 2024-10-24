# TODO: Test
# TODO: only summon if round is not finished
execute if entity @e[name="Spiritcaller", tag=ghr_boss] run schedule function grimstone_hold_raid:round3/spiritcaller_minion_spawn_tick 120s
execute if entity @e[name="Spiritcaller", tag=ghr_boss] run function grimstone_hold_raid:round3/spiritcaller_support_spawn