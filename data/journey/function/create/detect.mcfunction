##		IRON
execute as @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=marker,tag=hope_title,distance=..2] run function journey:create/iron

##		GOLD
execute as @n[type=item,nbt={Item:{id:"minecraft:gold_ingot",count:1}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=marker,tag=hope_title,distance=..2] run function journey:create/gold

##		DIAMOND
execute as @n[type=item,nbt={Item:{id:"minecraft:diamond",count:1}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=marker,tag=hope_title,distance=..2] run function journey:create/diam

##		NETHERITE 
execute as @n[type=item,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=marker,tag=hope_title,distance=..2] run function journey:create/neth