tellraw @a ["",{"text":"You made it to round "},{"score":{"name":"ghr.state","objective":"ghr.round"}},{"text":", rep "},{"score":{"name":"ghr.state","objective":"ghr.rep"}},{"text":" with "},{"score":{"name":"ghr.state","objective":"ghr.time_remaining_seconds"}},{"text":" seconds remaining"}]

tellraw @a "Player scores:"
execute as @a run tellraw @a ["",{"selector":"@s"},{"text":" Total kills: "},{"score":{"name":"@s","objective":"ghr.individual_kills"}}]
execute as @a run tellraw @a ["",{"selector":"@s"},{"text":" Total deaths: "},{"score":{"name":"@s","objective":"ghr.individual_deaths"}}]