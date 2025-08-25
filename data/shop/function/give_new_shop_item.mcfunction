
#setup armor stand
summon armor_stand ~ ~ ~ {Tags:["temp_item"]}
#set display item
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0] set from entity @n[type=armor_stand,tag=display_item] HandItems[0]
execute unless data entity @n[type=armor_stand,tag=temp_item] HandItems[0].id run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0] set value {id:"stick",count:1,components:{}}
#set prices
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data" set value {gold_price:0,iron_price:0,resultitem:{},shop:{bought:0b}}
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".iron_price set value 0
execute if data entity @n[type=armor_stand,tag=gold_price] HandItems[0].count run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".gold_price set from entity @n[type=armor_stand,tag=gold_price] HandItems[0].count
execute if data entity @n[type=armor_stand,tag=iron_price] HandItems[0].count run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".iron_price set from entity @n[type=armor_stand,tag=iron_price] HandItems[0].count
data modify storage shop:temp iron_price set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".iron_price
data modify storage shop:temp gold_price set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".gold_price

#set lore
function shop:set_lore_new_shop_item
#set actual buy item
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem set from entity @n[type=armor_stand,tag=buy_item] HandItems[0]
#make buyable
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".shop.bought set value 0b
#finish
execute unless data entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem.components run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem.components set value {}
function shop:finish_give_new_shop_item with entity @n[type=armor_stand,tag=temp_item] HandItems[0]
#cleanup
kill @e[type=armor_stand,tag=temp_item]