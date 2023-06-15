##TITLE DS3

#MARKER DEBUG
#execute as @a at @e[tag=hopeTitle] run particle minecraft:dust 0 0 1 1 ~ ~ ~
#execute as @a at @e[tag=hopeTitle,sort=arbitrary,limit=1] run particle minecraft:dust 0 1 0 5 ~ ~4 ~


##			REQUIRED ITEMS
##		IRON
#PARTICLE + SOUND
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 5
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.amethyst_block.break voice @a ~ 	~ ~ 2 1
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run summon marker ~ ~ ~ {Tags:["hopeTitle","ironBlock"]}

#DELETE ITEM
#execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}]

##########################################@

#PARTICLE + SOUND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..25] run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 5
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..25] run playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..25] run playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..25] run data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=ironBlock,sort=nearest,limit=1,distance=..25] run summon marker ~ ~ ~ {Tags:["hopeTitle","ironBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_block",Count:1b}}]




##		GOLD
#PARTICLE + SOUND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 15
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run summon marker ~ ~ ~ {Tags:["hopeTitle","goldBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block",Count:1b}}]


##		DIAMOND
#PARTICLE + SOUND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:wax_off ~ ~0.5 ~ 0 0 0 15 25
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:flame ~ ~0.5 ~ 0 0.25 0 0.03 20
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run summon marker ~ ~ ~ {Tags:["hopeTitle","diamondBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}]


##		NETHERITE 
#PARTICLE + SOUND
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:wax_off ~ ~0.5 ~ 0 0 0 15 50
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run particle minecraft:soul ~ ~0.5 ~ 0 0.25 0 0.03 20
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~ ~ #signs unless entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] run summon marker ~ ~ ~ {Tags:["hopeTitle","netheriteBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}]

##############
#TAG POUR PAS DELETE BLOC EN TROP
execute as @a at @e[tag=hopeTitle,sort=nearest,limit=1] run tag @e[tag=hopeTitle,sort=nearest,limit=1] add inPlace













#	TITLE (PINGU)
#IRON 25
#title montré à tous ceux qui sont dans la dist min et qui n'ont pas encore eu le title
#execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run title @a[tag=!playTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]



#donne le tag signifiant que le title a été joué 1x au joueur le plus éloigné (donc celui qui vient d'entrer dans la dist min)
#BORDEL execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run tag @a[limit=1,sort=nearest] add playTitle
#remove tag si en dehors de la zone
#execute as @a[tag=playTitle] at @e[tag=ironBlock,sort=nearest] run tag @a[distance=26..,limit=1,sort=nearest] remove playTitle

execute as @a at @e[tag=ironBlock] run execute at @p[distance=..25,tag=!ironplayTitle] run playsound minecraft:block.ender_chest.open voice @s ~ ~ ~ 5 0.7
execute as @a at @e[tag=ironBlock] run title @p[distance=..25,tag=!ironplayTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]

execute as @a at @e[tag=ironBlock] run tag @p[sort=nearest,distance=..25,tag=!ironplayTitle] add ironplayTitle

execute as @a at @e[tag=ironBlock] run tag @p[distance=25.001..25.2,tag=ironplayTitle] remove ironplayTitle
#l'area va faire actualiser le joueur dans une area pour un nouveau title sauf si autre area à - de 25b #supprimer tag au dessus de 50 unless marker proche de - de 50
execute as @e[tag=ironBlock] at @p[tag=ironplayTitle] unless entity @e[tag=ironBlock,distance=..25] run execute at @e[tag=ironBlock] run tag @p[distance=25.001..] remove ironplayTitle




#GOLD 50 OLD
#execute as @a[tag=!playTitle] at @e[tag=goldBlock,sort=nearest,limit=1] run title @a[distance=..50,tag=!playTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
#execute as @a[tag=!playTitle] at @e[tag=goldBlock,sort=nearest,limit=1] run tag @a[distance=..50,limit=1,sort=furthest] add playTitle
#execute as @a[tag=playTitle] at @e[tag=goldBlock,sort=nearest,limit=1] run tag @a[distance=51..,limit=1,sort=furthest] remove playTitle

#GOLD 50 
execute as @a at @e[tag=goldBlock] run execute at @p[distance=..50,tag=!goldplayTitle] run playsound minecraft:block.ender_chest.open voice @s ~ ~ ~ 5 0.7
execute as @a at @e[tag=goldBlock] run title @p[distance=..50,tag=!goldplayTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
execute as @a at @e[tag=goldBlock] run tag @p[sort=nearest,distance=..50,tag=!goldplayTitle] add goldplayTitle
execute as @a at @e[tag=goldBlock] run tag @p[distance=50.001..50.2,tag=goldplayTitle] remove goldplayTitle
execute as @e[tag=goldBlock] at @p[tag=goldplayTitle] unless entity @e[tag=goldBlock,distance=..50] run execute at @e[tag=goldBlock] run tag @p[distance=50.001..] remove goldplayTitle


#DIAMOND 100
execute as @a at @e[tag=diamondBlock] run execute at @p[distance=..100,tag=!diamondplayTitle] run playsound minecraft:block.ender_chest.open voice @s ~ ~ ~ 5 0.7
execute as @a at @e[tag=diamondBlock] run title @p[distance=..100,tag=!diamondplayTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
execute as @a at @e[tag=diamondBlock] run tag @p[sort=nearest,distance=..100,tag=!diamondplayTitle] add diamondplayTitle
execute as @a at @e[tag=diamondBlock] run tag @p[distance=100.001..100.2,tag=diamondplayTitle] remove diamondplayTitle
execute as @e[tag=diamondBlock] at @p[tag=diamondplayTitle] unless entity @e[tag=diamondBlock,distance=..100] run execute at @e[tag=diamondBlock] run tag @p[distance=100.001..] remove diamondplayTitle

#NETHERITE 200
execute as @a at @e[tag=netheriteBlock] run execute at @p[distance=..200,tag=!netheriteplayTitle] run playsound minecraft:block.ender_chest.open voice @s ~ ~ ~ 5 0.7
execute as @a at @e[tag=netheriteBlock] run title @p[distance=..200,tag=!netheriteplayTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
execute as @a at @e[tag=netheriteBlock] run tag @p[sort=nearest,distance=..200,tag=!netheriteplayTitle] add netheriteplayTitle
execute as @a at @e[tag=netheriteBlock] run tag @p[distance=200.001..200.2,tag=netheriteplayTitle] remove netheriteplayTitle
execute as @e[tag=netheriteBlock] at @p[tag=netheriteplayTitle] unless entity @e[tag=netheriteBlock,distance=..200] run execute at @e[tag=netheriteBlock] run tag @p[distance=200.001..] remove netheriteplayTitle



#DELETE MARKER + SOUND + RESET TAG D'ENTREE DANS ZONE
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run playsound minecraft:block.beacon.deactivate voice @a ~ ~ ~ 2 1.5
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=ironplayTitle] remove ironplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=goldplayTitle] remove goldplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=diamondplayTitle] remove diamondplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run tag @a[tag=netheriteplayTitle] remove netheriteplayTitle
execute as @a at @e[tag=hopeTitle,sort=nearest] unless block ~ ~ ~ #minecraft:signs run kill @e[tag=hopeTitle,sort=nearest,limit=1]