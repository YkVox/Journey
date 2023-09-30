

##		IRON
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..5] run function hopevox:items/iron
#   Reset received title
scoreboard players set @a receivedTitle 0

##		GOLD
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/gold

##		DIAMOND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/diamond

##		NETHERITE 
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run function hopevox:items/netherite

#TAG POUR PAS DELETE BLOC EN TROP
execute as @a at @e[tag=hopeTitle,sort=nearest,limit=1] run tag @e[tag=hopeTitle,sort=nearest,limit=1] add inPlace

##		TITLE:PINGU
#IRON 25
execute at @e[tag=ironBlock] as @a[distance=..25,tag=!titled] run function hopevox:titles/iron
execute at @e[tag=ironBlock] as @a[distance=30..,tag=titled] run tag @s remove titled
execute as @e[tag=ironBlock] as @a[distance=30..] run say yes
#execute at @e[tag=ironBlock] as @a[distance=26..,tag=titled] run scoreboard players add @s title_timer 1
#execute as @a[tag=titled] run execute if score @s title_timer matches 20 run tag @s remove titled
#execute as @a[tag=!titled] run scoreboard players set @s title_timer 0



#GOLD 50 
execute as @a[scores={receivedTitle=0}] at @e[tag=goldBlock] run function hopevox:titles/gold
execute as @e[tag=goldBlock] at @p[tag=goldplayTitle] unless entity @e[tag=goldBlock,distance=..50] run execute at @e[tag=goldBlock] run tag @p[distance=50.001..] remove goldplayTitle

#DIAMOND 100
execute as @a[scores={receivedTitle=0}] at @e[tag=diamondBlock] run function hopevox:titles/diamond
execute as @e[tag=diamondBlock] at @p[tag=diamondplayTitle] unless entity @e[tag=diamondBlock,distance=..100] run execute at @e[tag=diamondBlock] run tag @p[distance=100.001..] remove diamondplayTitle

#NETHERITE 200
execute as @a[scores={receivedTitle=0}] at @e[tag=netheriteBlock] run function hopevox:titles/netherite
execute as @e[tag=netheriteBlock] at @p[tag=netheriteplayTitle] unless entity @e[tag=netheriteBlock,distance=..200] run execute at @e[tag=netheriteBlock] run tag @p[distance=200.001..] remove netheriteplayTitle

#DELETE MARKER + SOUND + RESET TAG D'ENTREE DANS ZONE
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run function hopevox:titles/title_delete


#reset received title after 30sec
execute as @a[scores={receivedTitle=1}] run scoreboard players add @s title_timer 1
execute as @a[scores={receivedTitle=1}] if score @s title_timer matches 600 run function hopevox:reset_timer