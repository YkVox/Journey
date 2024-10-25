$execute if score #debug jrn_sign_id matches 1 run say sign runs check id jrn_sign_id$(check_id)

#default check value (si n'a jamais activé / check)
execute unless score @s jrn_check matches -2147483648..2147483647 run scoreboard players set @s jrn_check 0

#start check (aulieu de passer par un storage (global) chaque entity store où il en est dans le check)
execute store result entity @s data.check_id int 1 run scoreboard players add @s jrn_check 1

#compressed : ya une genre de latence qui fait que le timer ne se lance pas ; décallage sur le data ?
#$execute if score @s jrn_sign_id matches $(check_id) if score @p[tag=!titled] jrn_title_timer$(check_id) matches ..0 run function journey:run_title with entity @s data

#check id
$execute if score @s jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled] jrn_title_timer$(check_id) matches ..0 run function journey:title_generate/main



#anti repeat tag
$execute if score @s jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled] jrn_title_timer$(check_id) matches ..0 run function journey:title_tag

#si se voit générer title (recoit cd + tag), sort de l'area (perd les tags) puis rerentre alors que cd pas fini
#cette ligne est nouvelle et fix un des derniers bug majeurs, elle pourrait neanmoins etre combinee a la ligne precedente ; neamoins elle ne fixe ni n empire les soucis liees a la superposition des areas...
$execute if score @s jrn_sign_id matches $(check_id) run execute if score @p[tag=!titled] jrn_title_timer$(check_id) matches 1.. run function journey:title_tag



#start timer (oui le bullshit de mettre un macro dans un selecteur ; à ce point là) // j'ai aussi ici mod la manière de pick le joueur il faudra le tester
#défaut : pas possible de lui faire contenir !titled ; car tag ajouté avant      // si on inverse l'ordre, même probleme mais avec le timer
$execute if score @s jrn_sign_id matches $(check_id) run scoreboard players operation @p[scores={jrn_title_timer$(check_id)=..0}] jrn_title_timer$(check_id) = #cd_value jrn_cd_value



#loop until max reached
execute unless score @s jrn_check >= #total jrn_sign_id run function journey:check_id with entity @s data

#si tout check (max atteint), reset scoreboard (pour pouvoir check à nouveau au prochain passage)
execute if score @s jrn_check >= #total jrn_sign_id run scoreboard players set @s jrn_check 0