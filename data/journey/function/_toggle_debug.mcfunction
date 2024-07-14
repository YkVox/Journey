scoreboard players add #debug jrn_sign_id 1
execute if score #debug jrn_sign_id matches 2 run scoreboard players set #debug jrn_sign_id 0

execute if score #debug jrn_sign_id matches 0 run tellraw @s {"text":"Disabled debug mode"}
execute if score #debug jrn_sign_id matches 1 run tellraw @s {"text":"Enabled debug mode"}