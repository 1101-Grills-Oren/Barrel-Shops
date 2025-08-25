$execute as @n[type=armor_stand,tag=temp_item] if predicate shop:gold_required unless predicate shop:iron_required run data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:lore" set value ['{text:"$(gold_price) Gold",italic:false,color:gold}']
#$say $(gold_price) Gold
#$say $(iron_price) Iron