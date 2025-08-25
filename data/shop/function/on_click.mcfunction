
advancement revoke @s only shop:on_click_check
summon armor_stand ~ ~ ~ {Tags:["temp"]}
item replace entity @n[tag=temp] weapon.mainhand from entity @s player.cursor
execute anchored eyes run function shop:on_click_raytrace with entity @n[type=armor_stand,tag=temp] HandItems[0].components."minecraft:custom_data".on_click
kill @n[tag=temp]