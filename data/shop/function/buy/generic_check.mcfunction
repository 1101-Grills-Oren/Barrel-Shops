summon minecraft:armor_stand ~ ~ ~ {Tags:["temp_item"]}
item replace entity @n[type=armor_stand,tag=temp_item] weapon.mainhand from entity @s player.cursor
data modify storage shop:temp iron_price set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".iron_price
data modify storage shop:temp gold_price set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".gold_price
execute unless data entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock set value 9999999

item replace entity @s player.cursor from entity @n[type=armor_stand,tag=temp_item] weapon.mainhand

data modify storage shop:temp stock set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock

execute if predicate shop:hasiron if predicate shop:hasgold if predicate shop:stock_nonzero run function shop:buy/generic
kill @n[type=armor_stand,tag=temp_item]
item replace entity @s player.cursor with air
