advancement revoke @s only shop:bought_item

execute anchored eyes rotated as @s run function shop:raytrace_blockinteraction
#execute if items entity @p player.cursor white_wool run return run function shop:buy/wool
#execute if items entity @p player.cursor oak_planks run return run function shop:buy/planks
#execute if items entity @p player.cursor shears run return run function shop:buy/shears
execute as @p run function shop:buy/generic_check