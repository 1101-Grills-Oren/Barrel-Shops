execute if items block ~ ~ ~ container.0 air run return run function shop:buy/stock_update {Slot:"container.0"}
execute if items block ~ ~ ~ container.1 air run return run function shop:buy/stock_update {Slot:"container.1"}
execute if items block ~ ~ ~ container.2 air run return run function shop:buy/stock_update {Slot:"container.2"}
execute if items block ~ ~ ~ container.3 air run return run function shop:buy/stock_update {Slot:"container.3"}
execute if items block ~ ~ ~ container.4 air run return run function shop:buy/stock_update {Slot:"container.4"}
execute if items block ~ ~ ~ container.5 air run return run function shop:buy/stock_update {Slot:"container.5"}
execute if items block ~ ~ ~ container.6 air run return run function shop:buy/stock_update {Slot:"container.6"}
execute if items block ~ ~ ~ container.7 air run return run function shop:buy/stock_update {Slot:"container.7"}
execute if items block ~ ~ ~ container.8 air run return run function shop:buy/stock_update {Slot:"container.8"}
execute if items block ~ ~ ~ container.9 air run return run function shop:buy/stock_update {Slot:"container.9"}
execute if items block ~ ~ ~ container.10 air run return run function shop:buy/stock_update {Slot:"container.10"}
execute if items block ~ ~ ~ container.11 air run return run function shop:buy/stock_update {Slot:"container.11"}
execute if items block ~ ~ ~ container.12 air run return run function shop:buy/stock_update {Slot:"container.12"}
execute if items block ~ ~ ~ container.13 air run return run function shop:buy/stock_update {Slot:"container.13"}
execute if items block ~ ~ ~ container.14 air run return run function shop:buy/stock_update {Slot:"container.14"}
execute if items block ~ ~ ~ container.15 air run return run function shop:buy/stock_update {Slot:"container.15"}
execute if items block ~ ~ ~ container.16 air run return run function shop:buy/stock_update {Slot:"container.16"}
execute if items block ~ ~ ~ container.17 air run return run function shop:buy/stock_update {Slot:"container.17"}
execute if items block ~ ~ ~ container.18 air run return run function shop:buy/stock_update {Slot:"container.18"}
execute if items block ~ ~ ~ container.19 air run return run function shop:buy/stock_update {Slot:"container.19"}
execute if items block ~ ~ ~ container.20 air run return run function shop:buy/stock_update {Slot:"container.20"}
execute if items block ~ ~ ~ container.21 air run return run function shop:buy/stock_update {Slot:"container.21"}
execute if items block ~ ~ ~ container.22 air run return run function shop:buy/stock_update {Slot:"container.22"}
execute if items block ~ ~ ~ container.23 air run return run function shop:buy/stock_update {Slot:"container.23"}
execute if items block ~ ~ ~ container.24 air run return run function shop:buy/stock_update {Slot:"container.24"}
execute if items block ~ ~ ~ container.25 air run return run function shop:buy/stock_update {Slot:"container.25"}
execute if items block ~ ~ ~ container.26 air run return run function shop:buy/stock_update {Slot:"container.26"}

#data modify entity @n[type=armor_stand,tag=temp_item] Pos[1] set from entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock
#execute at @n[type=armor_stand,tag=temp_item] run tp @n[type=armor_stand,tag=temp_item] ~ ~-1 ~
#data modify entity @n[type=armor_stand,tag=temp_item] HandItems[0].components."minecraft:custom_data".stock set from entity @n[type=armor_stand,tag=temp_item] Pos[1]