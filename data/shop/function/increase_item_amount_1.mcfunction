#$(slot)
#$(item_id)
#$(item)
say incr
$execute if items block ~ ~ ~ $(slot) $(item_id)[count=99] run playsound entity.villager.no master @s ~ ~ ~
$execute unless items block ~ ~ ~ $(slot) minecraft:barrier unless items block ~ ~ ~ $(slot) $(item_id)[count=99] run item replace block ~ ~ ~ $(slot) from block ~ ~ ~ $(slot) shop:countadd1
$execute if items block ~ ~ ~ $(slot) minecraft:barrier run item replace block ~ ~ ~ $(slot) with $(item)[hide_tooltip={},custom_data={on_click:{command:"",condition:"block ~ ~ ~ #shop:storage",slot:"$(slot)"}}]