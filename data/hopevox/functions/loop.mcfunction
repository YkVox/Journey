##  TITLE SIGN CREATION

##		IRON
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..2] run function hopevox:create/iron

##		GOLD
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..2] run function hopevox:create/gold

##		DIAMOND
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..2] run function hopevox:create/diamond

##		NETHERITE 
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] at @s if block ~ ~ ~ #signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..2] run function hopevox:create/netherite


##  TITLE:PINGU
#for dbg purposes : diviser valeurs distance par 10
##      NETHERITE (200)
execute as @a[tag=!titled_neth] at @s run execute as @e[tag=netheriteBlock,distance=..199.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_neth] at @s unless entity @e[tag=netheriteBlock,distance=..200] run tag @s remove titled_neth

##      DIAMOND (100)
execute as @a[tag=!titled_diam] at @s run execute as @e[tag=diamondBlock,distance=..99.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_diam] at @s unless entity @e[tag=diamondBlock,distance=..100] run tag @s remove titled_diam

##      GOLD (50)
execute as @a[tag=!titled_gold] at @s run execute as @e[tag=goldBlock,distance=..49.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_gold] at @s unless entity @e[tag=goldBlock,distance=..50] run tag @s remove titled_gold

##      IRON (25)
execute as @a[tag=!titled_iron] at @s run execute as @e[tag=ironBlock,distance=..24.99,sort=nearest,limit=1] at @s run function hopevox:check/id
execute as @a[tag=titled_iron] at @s unless entity @e[tag=ironBlock,distance=..25] run tag @s remove titled_iron

execute as @a[tag=titled] at @s unless entity @e[tag=hopeTitle,distance=..25] run tag @s remove titled

#for dbg purposes : diviser valeurs distance par 10
##  PLAYER TIMER DECREASE
function hopevox:timer/decrease


#DELETE MARKER + SOUND + RESET TAG D'ENTREE DANS ZONE
execute as @e[tag=hopeTitle] at @s unless block ~ ~ ~ #minecraft:signs run function hopevox:titles/title_delete

#DBG
#function hopevox:dbg_tick