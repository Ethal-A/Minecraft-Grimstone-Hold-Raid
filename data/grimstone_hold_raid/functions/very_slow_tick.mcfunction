execute if score ghr.state ghr.raid_ongoing matches 1 run schedule function grimstone_hold_raid:very_slow_tick 10s

# Allow hostiles to find players
execute as @e[tag=ghr_hostile] run attribute @s enhancedai:generic.xray_follow_range base set 64
execute as @e[tag=ghr_hostile] run attribute @s generic.follow_range base set 64