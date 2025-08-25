
#setup armor stand
summon armor_stand ~ ~ ~ {Tags:["temp_item"]}

summon armor_stand ~ ~ ~ {Tags:["display_item"]}
item replace entity @n[tag=display_item] weapon.mainhand from block ~ ~ ~ container.11

summon armor_stand ~ ~ ~ {Tags:["gold_price"]}
item replace entity @n[tag=gold_price] weapon.mainhand from block ~ ~ ~ container.14
execute if items entity @n[tag=gold_price] weapon.mainhand barrier run item replace entity @n[tag=gold_price] weapon.mainhand with air

summon armor_stand ~ ~ ~ {Tags:["iron_price"]}
item replace entity @n[tag=iron_price] weapon.mainhand from block ~ ~ ~ container.12
execute if items entity @n[tag=iron_price] weapon.mainhand barrier run item replace entity @n[tag=iron_price] weapon.mainhand with air

summon armor_stand ~ ~ ~ {Tags:["buy_item"]}
item replace entity @n[tag=buy_item] weapon.mainhand from block ~ ~ ~ container.15

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
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock set value 1
item replace block ~ ~ ~ container.15 with air

#set lore
function shop:set_lore_new_shop_item
#set actual buy item
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem set from entity @n[type=armor_stand,tag=buy_item] HandItems[0]
#make buyable
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".shop.bought set value 0b
#finish
execute unless data entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem.components run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem.components set value {}
#data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:item_model" set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].id
#data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].id set value "structure_block"

item replace block ~ ~ ~ container.13 from entity @n[tag=temp_item] weapon.mainhand

#cleanup
kill @e[type=armor_stand,tag=temp_item]
kill @e[type=armor_stand,tag=display_item]
kill @e[type=armor_stand,tag=buy_item]
kill @e[type=armor_stand,tag=iron_price]
kill @e[type=armor_stand,tag=gold_price]
#https://youtu.be/ByarVJabeiA