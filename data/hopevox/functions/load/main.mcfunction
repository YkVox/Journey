schedule function hopevox:loop 1s

#sign id
scoreboard objectives add sign_id dummy

#title cd
scoreboard objectives add cd_value dummy
scoreboard players set #cd_value cd_value 60

#titles times
title @a times 0.3s 4.5s 5s

#create title scoreboards
function hopevox:load/title_sb_create

#default player values
function hopevox:load/default_values

#message
execute as @a at @s run tellraw @s [{"text":"Welcome to ","color":"gray","italic":true},{"text":"Journey","color":"gold","bold":true,"italic":false}]
execute as @a at @s run tellraw @s [{"text":"originally from","color":"gray","italic":true},{"text":" Hope's ","color":"white","bold":false,"italic":false},{"text":"Dark Souls Titles","color":"white","bold":true,"italic":false}]
execute as @a at @s run tellraw @s {"text":" "}
execute as @a at @s run tellraw @s [{"text":"Sucessfully activated! ","color":"light_purple","bold":false},{"text":"Version is ","color":"gray","bold":false,"italic":true},{"text":"[","color":"white","bold":false,"italic":false},{"text":"1.3","color":"gold","bold":true},{"text":"]","color":"white","bold":false}]