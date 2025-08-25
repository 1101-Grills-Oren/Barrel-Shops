execute as @p run function shop:unlock_inventory
$execute at @p run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"$(id)",count:$(count),components:$(components)}}
execute as @p run schedule function shop:fill_inventory 1t