# TODO: Test
# TODO: summon custom enemies just for the freakager
execute if entity @e[name="Freakager", tag=ghr_boss] run schedule function grimstone_hold_raid:round5/freakager_minion_spawn_tick 60s
tellraw @a {"text":"The Freakager calls upon the swarm...","color":"red"}
execute as @a[x=185, y=300, z=-25, dx=47, dy=19, dz=47] run function grimstone_hold_raid:round5/freakager_summon_swarm