#parameters: 
#$(command) - str: Command to run. If you want or need more than one, create a new function and put them in it.
#$(slot) - str: Slot this item was in. Used to put the item back into the gui it was in.
#say yay
$item replace entity @s player.cursor from block ~ ~ ~ $(slot)
$item replace block ~ ~ ~ $(slot) from entity @n[type=armor_stand,tag=temp] weapon.mainhand
$function shop:run_command {command:"$(command)"}