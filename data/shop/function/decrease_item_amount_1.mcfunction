#$(slot)

$execute if items block ~ ~ ~ $(slot) barrier[count=1] run playsound entity.villager.no master @s ~ ~ ~
$execute if items block ~ ~ ~ $(slot) *[count=1] run item replace block ~ ~ ~ $(slot) with barrier[hide_tooltip={},custom_data={on_click:{command:"",condition:"block ~ ~ ~ #shop:storage",slot:"$(slot)"}}]
$execute unless items block ~ ~ ~ $(slot) barrier[count=1] run item replace block ~ ~ ~ $(slot) from block ~ ~ ~ $(slot) shop:countremove1