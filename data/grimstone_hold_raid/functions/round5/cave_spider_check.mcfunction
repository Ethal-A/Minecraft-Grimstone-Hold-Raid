# TODO: Test
execute if score ghr.state ghr.round matches 5 run schedule function grimstone_hold_raid:round4/cave_spider_check 30s
scoreboard objectives add ghr.cave_spiders dummy "Number of cave spiders remaining"
scoreboard players set ghr.state ghr.cave_spiders 0
execute as @e[type=minecraft:cave_spider, tag=ghr_hostile] run scoreboard players add ghr.state ghr.cave_spiders 1
execute if score ghr.state ghr.cave_spiders = ghr.state ghr.hostiles_remaining run kill @e[type=minecraft:cave_spider, tag=ghr_hostile]
scoreboard objectives remove ghr.cave_spiders