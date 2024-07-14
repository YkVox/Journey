#bon je flex : en gros c'est pour avoir au lieu de 1, 2 3 avoir 01, 02, 03 ; puis ça passe à 10, 11, 12 normal après 10 ; c'est purement pour un meilleur affichage IG
#   avec flex ; mais d'un coté ce sera chiant pour tester après donc je laisse ça de côté pour l'instant
#$execute if score #setup jrn_sign_id matches 0..9 run scoreboard objectives add jrn_title_timer0$(id) dummy
#$execute if score #setup jrn_sign_id matches 10.. run scoreboard objectives add jrn_title_timer$(id) dummy

#$execute if score #setup jrn_sign_id matches 0..9 run execute as @a at @s unless score @s jrn_title_timer0$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer0$(id) 0
#$execute if score #setup jrn_sign_id matches 10.. run execute as @a at @s unless score @s jrn_title_timer$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer$(id) 0

#   sans flex
#add scoreboard
$scoreboard objectives add jrn_title_timer$(id) dummy
#default scoreboard player values
$execute as @a at @s unless score @s jrn_title_timer$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer$(id) 0

#update storage count
execute store result storage minecraft:journey jrn_sign_id.id int 1 run scoreboard players add #setup jrn_sign_id 1
#loop until max reached
execute unless score #setup jrn_sign_id = #max jrn_sign_id run function journey:load/macro_title_setup with storage minecraft:journey jrn_sign_id