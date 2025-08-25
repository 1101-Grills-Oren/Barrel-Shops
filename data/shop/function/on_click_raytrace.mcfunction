#parameters: 
#$(command): list<str> - command to run
#$(condition): <str> - condition to end raytrace. Reccommended to be a check for if the block is storage.
#$(slot): <str>, item_slot - slot of container to move item back into.
say help

$execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #shop:storage run function shop:on_click_raytrace {command:"$(command)",condition:"$(condition)",slot:"$(slot)"}
$execute positioned ^ ^ ^0.1 if block ~ ~ ~ #shop:storage align xyz positioned ~0.5 ~0.5 ~0.5 run function shop:on_click_raytrace_finish {command:"$(command)",slot:"$(slot)"}