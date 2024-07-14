$execute if score #debug jrn_sign_id matches 1 run say decrease jrn_title_timer$(decrease_id)

#start run
execute store result storage minecraft:journey jrn_sign_id.decrease_id int 1 run scoreboard players add #decrease_id jrn_sign_id 1

#player timer decrease
$scoreboard players remove @a[scores={jrn_title_timer$(decrease_id)=1..}] jrn_title_timer$(decrease_id) 1

#loop until max reached
execute unless score #decrease_id jrn_sign_id >= #total jrn_sign_id run function journey:timer/decrease with storage minecraft:journey jrn_sign_id

#si tout check (max atteint), reset scoreboard (pour pouvoir check à nouveau au prochain passage)
execute if score #decrease_id jrn_sign_id >= #total jrn_sign_id run scoreboard players set #decrease_id jrn_sign_id 0