execute as @a at @s run tellraw @s [{"text":"Welcome to ","color":"gray","italic":true},{"text":"Journey","color":"gold","bold":true,"italic":false}]
execute as @a at @s run tellraw @s [{"text":"originally from","color":"gray","italic":true},{"text":" Hope's ","color":"white","bold":false,"italic":false},{"text":"Dark Souls Titles","color":"white","bold":true,"italic":false}]
execute as @a at @s run tellraw @s {"text":" "}
execute as @a at @s run tellraw @s [{"text":"Sucessfully activated! ","color":"light_purple","bold":false},{"text":"Version is ","color":"gray","bold":false,"italic":true},{"text":"[","color":"white","bold":false,"italic":false},{"text":"1.3","color":"gold","bold":true},{"text":"]","color":"white","bold":false}]


#sign id
scoreboard objectives add jrn_sign_id dummy

#title cd (en double secondes) default : 60sec (30 * 2)
scoreboard objectives add jrn_cd_value dummy
scoreboard players set #cd_value jrn_cd_value 30

#titles times
title @a times 0.3s 4.5s 5s

#run title player check id
scoreboard objectives add jrn_check dummy

#timer decreaser default value
execute unless score #decrease_id jrn_sign_id matches -2147483648..2147483647 run scoreboard players set #decrease_id jrn_sign_id 0

#default storage values for macro (unless already setup) ; sera la même valeur que "#total jrn_sign_id"      + timer decrease id default value
execute unless data storage minecraft:journey jrn_sign_id run data modify storage minecraft:journey jrn_sign_id set value {id:1,decrease_id:0}
#default total value
execute unless score #total jrn_sign_id matches -2147483648..2147483647 run scoreboard players set #total jrn_sign_id 0

#default title mode 
execute unless score #mode jrn_sign_id matches -2147483648..2147483647 run scoreboard players set #mode jrn_sign_id 0

##new : scoreboard se créé quand le sign est créé ; voir function create/general (c est l ideal)
#old : auto create scoreboard + default value avec limite fixée
#   default setup value
#scoreboard players set #setup jrn_sign_id 0
#   run setup
#function journey:load/macro_title_setup with storage minecraft:journey jrn_sign_id
#max sign id
#scoreboard players set #max jrn_sign_id 100