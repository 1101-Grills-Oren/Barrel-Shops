advancement revoke @s only shop:custom_block_shop_config
execute at @n[tag=setup_block,tag=shop_config] unless block ~ ~ ~ barrel run setblock ~ ~ ~ barrel
execute at @n[tag=setup_block,tag=shop_config] run function shop:load_shop_configurator_gui_settings
execute at @n[tag=setup_block,tag=shop_config] run function shop:load_shop_configurator_gui_1
execute at @n[tag=setup_block,tag=shop_config] if block ~ ~ ~ barrel run summon armor_stand ~ ~ ~ {"HasVisualFire": 0,"OnGround": 1,"NoGravity": 1,"Invulnerable": 1,"CustomNameVisible": 0,"Silent": 1,"Glowing": 0,"Tags": ["custom_block","shop_config"],"NoAI": 1,"Invisible": 1,"Marker": 1,"NoBasePlate": 1,"ShowArms": 0}
execute at @n[tag=setup_block,tag=shop_config] if block ~ ~ ~ barrel run kill @n[tag=setup_block]
execute at @n[tag=custom_block,tag=shop_config] unless block ~ ~ ~ barrel run kill @e[type=item,distance=0..1]
execute at @n[tag=custom_block,tag=shop_config] unless block ~ ~ ~ barrel run loot spawn ~ ~ ~ loot shop:shop_configurator
execute at @n[tag=custom_block,tag=shop_config] unless block ~ ~ ~ barrel run kill @n[tag=custom_block,tag=shop_config]

