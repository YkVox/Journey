##		IRON
execute as @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] at @s \
    if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @n[type=marker,tag=hope_title,distance=..2] \
    run function journey:create/general {material:iron,particle1_count:5,extra_particle:wax_off}

##		GOLD
execute as @n[type=item,nbt={Item:{id:"minecraft:gold_ingot",count:1}}] at @s \
    if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @n[type=marker,tag=hope_title,distance=..2] \
    run function journey:create/general {material:gold,particle1_count:15,extra_particle:wax_off}

##		DIAMOND
execute as @n[type=item,nbt={Item:{id:"minecraft:diamond",count:1}}] at @s \
    if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @n[type=marker,tag=hope_title,distance=..2] \
    run function journey:create/general {material:diam,particle1_count:25,extra_particle:flame}

##		NETHERITE 
execute as @n[type=item,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}] at @s \
    if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @n[type=marker,tag=hope_title,distance=..2] \
    run function journey:create/general {material:neth,particle1_count:50,extra_particle:soul}