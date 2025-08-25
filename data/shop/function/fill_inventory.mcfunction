give @p light_gray_stained_glass_pane[minecraft:max_stack_size=1,item_model="minecraft:air",minecraft:item_name= "\"\"",minecraft:hide_tooltip= {}] 50
#stopsound @a[distance=0..10] * entity.item.pickup
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",components:{"minecraft:max_stack_size":1}}}]