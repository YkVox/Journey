$execute if score #debug jrn_sign_id matches 1 run say sign runs check id jrn_sign_id$(check_id)

#default check value (si n'a jamais activé / check)
execute unless score @s jrn_check matches -2147483648..2147483647 run scoreboard players set @s jrn_check 0

#start check (aulieu de passer par un storage (global) chaque entity store où il en est dans le check)
execute store result entity @s data.check_id int 1 run scoreboard players add @s jrn_check 1

#spécifique au matériau du panneau : iron autorise tout sauf iron, gold autorise tout sauf gold etc. >> PERMET LA SUPERPOSITION DE MATERIAUX
#$execute if score @s[tag=title_$(material)] jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled__$(material)] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main {material:titled_$(material)}
#il faut que les 4 soient séparés pour permettre la superposition donc pas de macro possible...

$execute if score @s[tag=title_neth] jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled_neth] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main {material:titled_neth}
$execute if score @s[tag=title_diam] jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled_diam] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main {material:titled_diam}
$execute if score @s[tag=title_gold] jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled_gold] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main {material:titled_gold}
$execute if score @s[tag=title_iron] jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled_iron] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main {material:titled_iron}

#tag
$execute if score @s jrn_sign_id matches $(check_id) run function journey:tag/add

#timer
$execute if score @s jrn_sign_id matches $(check_id) run scoreboard players operation @p[scores={jrn_title_timer$(check_id)=..0}] jrn_title_timer$(check_id) = #cd_value jrn_cd_value

#loop until max reached
execute unless score @s jrn_check >= #total jrn_sign_id run function journey:check_id with entity @s data

#si tout check (max atteint), reset scoreboard (pour pouvoir check à nouveau au prochain passage)
execute if score @s jrn_check >= #total jrn_sign_id run scoreboard players set @s jrn_check 0