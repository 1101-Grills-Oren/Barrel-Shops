fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 warped_hyphae replace air
setblock ~ ~-2 ~ command_block{Command:"function shop:give_new_shop_item"}
setblock ~ ~ ~ redstone_lamp
setblock ~ ~-1 ~ observer[facing=up]
setblock ~ ~1 ~ stone_button[face=floor]

execute positioned ~2 ~1 ~2 facing ~-1 ~1 ~-1 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Small:1,CustomName:"Display item goes here",CustomNameVisible:1b,Tags:["display_item"]}
execute positioned ~-2 ~1 ~2 facing ~1 ~1 ~-1 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Small:1,CustomName:"Item to be bought goes here",CustomNameVisible:1b,Tags:["buy_item"]}
execute positioned ~2 ~1 ~-2 facing ~-1 ~1 ~1 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Small:1,CustomName:"Gold price goes here",CustomNameVisible:1b,Tags:["gold_price"]}
execute positioned ~-2 ~1 ~-2 facing ~1 ~1 ~1 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Small:1,CustomName:"Iron price goes here",CustomNameVisible:1b,Tags:["iron_price"]}
setblock ~2 ~ ~2 chiseled_quartz_block
setblock ~-2 ~ ~2 chiseled_quartz_block
setblock ~2 ~ ~-2 chiseled_quartz_block
setblock ~-2 ~ ~-2 chiseled_quartz_block