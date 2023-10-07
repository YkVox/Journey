

title @p[tag=!titled,sort=nearest,limit=1] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[2]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"front_text.messages[3]","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
execute as @p[tag=!titled,sort=nearest,limit=1] run playsound minecraft:entity.evoker.prepare_summon ambient @s ^ ^ ^15 5 1.17
scoreboard players set @p[tag=!titled,sort=nearest,limit=1] title_timer 1200
tag @p[tag=!titled,sort=nearest,limit=1] add titled





#	TITLE (PINGU)
#IRON 25
#title montré à tous ceux qui sont dans la dist min et qui n'ont pas encore eu le title
#execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run title @a[tag=!playTitle] title [{"text":"     ","color":"white","bold":false,"underlined":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"nbt":"Text4","block":"~ ~ ~","interpret":true,"color":"white","bold":false,"underlined":true},{"text":"     ","color":"white","bold":false,"underlined":true}]
#donne le tag signifiant que le title a été joué 1x au joueur le plus éloigné (donc celui qui vient d'entrer dans la dist min)
#BORDEL execute as @a[tag=!playTitle] at @s run execute at @e[tag=ironBlock,sort=nearest,distance=..25] run tag @a[limit=1,sort=nearest] add playTitle
#remove tag si en dehors de la zone
#execute as @a[tag=playTitle] at @e[tag=ironBlock,sort=nearest] run tag @a[distance=26..,limit=1,sort=nearest] remove playTitle

