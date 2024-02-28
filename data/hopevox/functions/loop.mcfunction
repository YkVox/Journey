schedule function hopevox:loop 1s

##  TITLE SIGN CREATION

##		IRON
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hope_title,sort=nearest,limit=1,distance=..2] run function hopevox:create/iron

##		GOLD
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hope_title,sort=nearest,limit=1,distance=..2] run function hopevox:create/gold

##		DIAMOND
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hope_title,sort=nearest,limit=1,distance=..2] run function hopevox:create/diam

##		NETHERITE 
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hope_title,sort=nearest,limit=1,distance=..2] run function hopevox:create/neth


##  TITLE:PINGU

##      NETHERITE (200)
execute as @a[tag=!titled_neth] at @s run execute as @e[tag=title_neth,distance=..199.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_neth] at @s unless entity @e[tag=title_neth,distance=..200] run tag @s remove titled_neth

##      DIAMOND (100)
execute as @a[tag=!titled_diam] at @s run execute as @e[tag=title_diam,distance=..99.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_diam] at @s unless entity @e[tag=title_diam,distance=..100] run tag @s remove titled_diam

##      GOLD (50)
execute as @a[tag=!titled_gold] at @s run execute as @e[tag=title_gold,distance=..49.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_gold] at @s unless entity @e[tag=title_gold,distance=..50] run tag @s remove titled_gold

##      IRON (25)
execute as @a[tag=!titled_iron] at @s run execute as @e[tag=title_iron,distance=..24.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_iron] at @s unless entity @e[tag=title_iron,distance=..25] run tag @s remove titled_iron

#execute as @a[tag=titled] at @s unless entity @e[tag=hope_title,distance=..25] run tag @s remove titled
##      GENERAL TAG REMOVAL
execute as @a[tag=titled] at @s unless entity @s[tag=titled_iron] unless entity @s[tag=titled_gold] unless entity @s[tag=titled_diam] unless entity @s[tag=titled_neth] run tag @s remove titled

##      ACTIVE SIGN EFFECTS
execute as @a at @s run execute as @e[tag=hope_title,distance=..15] at @s if predicate hopevox:rng10 run function hopevox:title_particles

##  PLAYER TIMER DECREASE
function hopevox:timer/decrease


##      DELETE SIGN
execute as @e[tag=hope_title] at @s unless block ~ ~ ~ #minecraft:signs run function hopevox:title_delete
execute as @e[tag=hopeTitle] at @s unless block ~ ~ ~ #minecraft:signs run function hopevox:title_delete

#DBG
#function hopevox:dbg_tick