summon minecraft:armor_stand ~ ~ ~ {Tags:["temp_item"]}
item replace entity @n[type=armor_stand,tag=temp_item] weapon.mainhand from entity @p player.cursor

function shop:buy/clear_money with entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data"
function shop:give_resultitem with entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".resultitem

function shop:buy/stock_update_slot_check

kill @n[type=armor_stand,tag=temp_item]
