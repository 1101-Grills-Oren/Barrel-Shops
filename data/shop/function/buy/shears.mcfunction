clear @p shears[custom_data={shop:{bought:0b}}]
execute if items entity @p hotbar.* iron_ingot\
[count=20|count=21|count=22|count=23|count=24|count=25|count=26|count=27|count=28|count=29|count=30|count=31|count=32|count=33|count=34|count=35|count=36|count=37|count=38|count=39|count=40|count=41|count=42|count=43|count=44|count=45|count=46|count=47|count=48|count=49|count=50|count=51|count=52|count=53|count=54|count=55|count=56|count=57|count=58|count=59|count=60|count=61|count=62|count=63|count=64\
] run return run function shop:buy/shears_finish_buy
execute if items entity @p inventory.* iron_ingot\
[count=20|count=21|count=22|count=23|count=24|count=25|count=26|count=27|count=28|count=29|count=30|count=31|count=32|count=33|count=34|count=35|count=36|count=37|count=38|count=39|count=40|count=41|count=42|count=43|count=44|count=45|count=46|count=47|count=48|count=49|count=50|count=51|count=52|count=53|count=54|count=55|count=56|count=57|count=58|count=59|count=60|count=61|count=62|count=63|count=64\
] run function shop:buy/shears_finish_buy