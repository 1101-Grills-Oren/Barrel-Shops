#$(count),$(id),$(components): item
#$(slot) block_slot to put item in
$summon armor_stand ~ ~ ~ {Tags:['temp'],HandItems:[{count:$(count),id:"$(id)",components:$(components)},{}]}
$item replace block ~ ~ ~ $(Slot) from entity @n[tag=temp,type=armor_stand] weapon.mainhand
kill @n[type=armor_stand,tag=temp]