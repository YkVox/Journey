#execute run tellraw @s ["",{"text":"[Enable Default Titles]","bold":true,"color":"dark_green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #mode jrn_sign_id 0"}},{"text":"\n","bold":true},{"text":"[Enable Transposia Titles]","bold":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #mode jrn_sign_id 1"}}]

scoreboard players add #mode jrn_sign_id 1
execute if score #mode jrn_sign_id matches 2 run scoreboard players set #mode jrn_sign_id 0

execute if score #mode jrn_sign_id matches 0 run tellraw @s {"text":"Set mode : Default Dark Souls Titles"}
execute if score #mode jrn_sign_id matches 1 run tellraw @s {"text":"Set mode : Transposia Titles"}