schedule function journey:loop 2s

#menu pour paramétrer distance p chaque matériau?

##  TITLE SIGN CREATION
execute as @a at @s if entity @n[type=item,distance=..5] run function journey:create/detect


##  TITLE GENERATION : PINGU

##      NETHERITE (200)
execute as @a[tag=!titled_neth] at @s run execute as @n[type=marker,tag=title_neth,distance=..199.99] at @s run function journey:check_id with entity @s data
execute as @a[tag=titled_neth] at @s unless entity @e[type=marker,tag=title_neth,distance=..200] run tag @s remove titled_neth

##      DIAMOND (100)
execute as @a[tag=!titled_diam] at @s run execute as @n[type=marker,tag=title_diam,distance=..99.99] at @s run function journey:check_id with entity @s data
execute as @a[tag=titled_diam] at @s unless entity @e[type=marker,tag=title_diam,distance=..100] run tag @s remove titled_diam

##      GOLD (50)
execute as @a[tag=!titled_gold] at @s run execute as @n[type=marker,tag=title_gold,distance=..49.99] at @s run function journey:check_id with entity @s data
execute as @a[tag=titled_gold] at @s unless entity @e[type=marker,tag=title_gold,distance=..50] run tag @s remove titled_gold

##      IRON (25)
#run check 
execute as @a[tag=!titled_iron] at @s run execute as @n[type=marker,tag=title_iron,distance=..24.99] at @s run function journey:check_id with entity @s data
#rem tag
execute as @a[tag=titled_iron] at @s unless entity @e[type=marker,tag=title_iron,distance=..25] run tag @s remove titled_iron


##  PLAYER TIMER DECREASE
execute if score #decrease_id jrn_sign_id matches 0 run function journey:timer/decrease with storage minecraft:journey jrn_sign_id


##      GENERAL PLAYER TAG REMOVAL
execute as @a[tag=titled] at @s \
    unless entity @s[tag=titled_iron] \
    unless entity @s[tag=titled_gold] \
    unless entity @s[tag=titled_diam] \
    unless entity @s[tag=titled_neth] \
        run tag @s remove titled


##  ACTIVE SIGN EFFECTS
execute as @a at @s run execute as @n[type=marker,tag=hope_title,distance=..15] at @s run function journey:particles

##  BREAK SIGN
execute as @a at @s run execute as @n[type=marker,tag=hope_title,distance=..50] at @s unless block ~ ~ ~ #minecraft:signs run function journey:delete