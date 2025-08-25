clear @p iron_ingot 16
execute as @p run function shop:unlock_inventory
give @p oak_planks[custom_data={shop:{bought:1b}}] 16
execute as @p run function shop:fill_inventory
