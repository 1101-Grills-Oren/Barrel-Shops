
$clear @p iron_ingot $(iron_price)
$clear @p gold_ingot $(gold_price)
$execute if predicate shop:iron_required positioned ~ ~-2 ~ run summon item ~ ~ ~ {Item:{id:"iron_ingot",count:$(iron_price)}}
$execute if predicate shop:gold_required positioned ~ ~-2 ~ run summon item ~ ~ ~ {Item:{id:"gold_ingot",count:$(gold_price)}}