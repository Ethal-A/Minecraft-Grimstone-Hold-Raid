tellraw @a "Clearing all mobs and items in the arena. Make sure NOT to drop anything."
function grimstone_hold_raid:finish/clear_mobs
schedule function grimstone_hold_raid:finish/clear_items 5s append
schedule function grimstone_hold_raid:finish/clear_items 8s append
schedule function grimstone_hold_raid:finish/clear_items 16s append