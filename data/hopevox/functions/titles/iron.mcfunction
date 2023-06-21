
#	TITLE (PINGU)
#IRON 25
#title montré à tous ceux qui sont dans la dist min et qui n'ont pas encore eu le title
#execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run title @a[tag=!playTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
#donne le tag signifiant que le title a été joué 1x au joueur le plus éloigné (donc celui qui vient d'entrer dans la dist min)
#BORDEL execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run tag @a[limit=1,sort=nearest] add playTitle
#remove tag si en dehors de la zone
#execute as @a[tag=playTitle] at @e[tag=ironBlock,sort=nearest] run tag @a[distance=26..,limit=1,sort=nearest] remove playTitle

execute at @p[distance=..25,tag=!ironplayTitle] run function hopevox:sounds/iron_sound
title @p[distance=..25,tag=!ironplayTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[2]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[3]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
tag @p[sort=nearest,distance=..25,tag=!ironplayTitle] add ironplayTitle
tag @p[distance=25.001..25.2,tag=ironplayTitle] remove ironplayTitle