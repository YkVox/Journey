##		IRON
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..5] run function hopevox:items/iron

##		GOLD
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/gold

##		DIAMOND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/diamond

##		NETHERITE 
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/netherite

#TAG POUR PAS DELETE BLOC EN TROP
execute as @a at @e[tag=hopeTitle,sort=nearest,limit=1] run tag @e[tag=hopeTitle,sort=nearest,limit=1] add inPlace

##		TITLE:PINGU
#IRON 25
execute as @a at @e[tag=ironBlock] run function hopevox:titles/iron
#l'area va faire actualiser le joueur dans une area pour un nouveau title sauf si autre area à - de 25b #supprimer tag au dessus de 50 unless marker proche de - de 50
execute as @e[tag=ironBlock] at @p[tag=ironplayTitle] unless entity @e[tag=ironBlock,distance=..25] run execute at @e[tag=ironBlock] run tag @p[distance=25.001..] remove ironplayTitle

#GOLD 50 
execute as @a at @e[tag=goldBlock] run function hopevox:titles/gold
execute as @e[tag=goldBlock] at @p[tag=goldplayTitle] unless entity @e[tag=goldBlock,distance=..50] run execute at @e[tag=goldBlock] run tag @p[distance=50.001..] remove goldplayTitle

#DIAMOND 100
execute as @a at @e[tag=diamondBlock] run function hopevox:titles/diamond
execute as @e[tag=diamondBlock] at @p[tag=diamondplayTitle] unless entity @e[tag=diamondBlock,distance=..100] run execute at @e[tag=diamondBlock] run tag @p[distance=100.001..] remove diamondplayTitle

#NETHERITE 200
execute as @a at @e[tag=netheriteBlock] run function hopevox:titles/netherite
execute as @e[tag=netheriteBlock] at @p[tag=netheriteplayTitle] unless entity @e[tag=netheriteBlock,distance=..200] run execute at @e[tag=netheriteBlock] run tag @p[distance=200.001..] remove netheriteplayTitle

#DELETE MARKER + SOUND + RESET TAG D'ENTREE DANS ZONE
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run playsound minecraft:block.beacon.deactivate voice @a ~ ~ ~ 2 1.5
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=ironplayTitle] remove ironplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=goldplayTitle] remove goldplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=diamondplayTitle] remove diamondplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=netheriteplayTitle] remove netheriteplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run kill @e[tag=hopeTitle,sort=nearest,limit=1]