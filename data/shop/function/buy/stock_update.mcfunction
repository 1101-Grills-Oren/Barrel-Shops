#$(Slot)


summon armor_stand ~ ~ ~ {Tags:["temp_location"]}
data modify entity @n[type=armor_stand,tag=temp_item] Pos[1] set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock
execute at @n[type=armor_stand,tag=temp_item] run tp @n[type=armor_stand,tag=temp_item] ~ ~-1 ~
data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock set from entity @n[type=armor_stand,tag=temp_item] Pos[1]
execute at @n[type=armor_stand,tag=temp_location] run tp @n[type=armor_stand,tag=temp_item] ~ ~ ~
kill @n[type=armor_stand,tag=temp_location]
$item replace block ~ ~ ~ $(Slot) from entity @n[type=armor_stand,tag=temp_item] weapon.mainhand