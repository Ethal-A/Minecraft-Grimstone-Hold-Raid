# Repeat on certain conditions
execute if score ghr.state ghr.round matches 2 if entity @e[name="Goliath"] run schedule function grimstone_hold_raid:round2/goliath_support_tick 40s
execute if score ghr.state ghr.round matches 2 if entity @e[name="Goliath"] run function grimstone_hold_raid:round2/goliath_support_spawn