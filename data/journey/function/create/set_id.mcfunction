execute if score #debug jrn_sign_id matches 1 run say sign id & scoreboard set

#default marker data (for checking pour activer title)
execute if data entity @s data{} run data modify entity @s {data:{}} merge value {data:{check_id:0}}

#set max possible value
scoreboard players set #total jrn_sign_id 0
scoreboard players operation #total jrn_sign_id > @e[tag=hope_title] jrn_sign_id

#update total sign id + storage for next scoreboard
execute store result storage minecraft:journey jrn_sign_id.id int 1 run scoreboard players add #total jrn_sign_id 1

#set sign id
scoreboard players operation @s jrn_sign_id = #total jrn_sign_id

#create scoreboard : fonction a part car dès fois pas assez rapide sinon (ne créait SB qu'1 fois sur 2) ; macros dont variables sotn update doivent run dans function a part, peuvent pas se MAJ au sein de la ^m function
function journey:create/sb with storage minecraft:journey jrn_sign_id