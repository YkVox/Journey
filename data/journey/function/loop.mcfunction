schedule function journey:loop 2s



#todo : 
#tag removal par macro ar encore limités à 20 (uqe uninstall ?)
#recuperer total sign_id, et run macr oavec limite ce total
#combiner les titled de chaque matériau en un function pour juste @a[tag=titled] et ensuite @s[tag=matériau] pour chaque matériau + 
#   + function pour suprimer tag
#combiner active sign effects & break sign detection
#menu pour paramétrer distance p chaque matériau?
#fix load auto valeur min pour joueurs, 
# + fix dossier load


##  TITLE SIGN CREATION
execute as @a at @s if entity @n[type=item,distance=..5] run function journey:create/detect

##  REM TAG
execute as @a[tag=titled] at @s run function journey:tag/rem

##  TITLE GENERATION : run check PINGU
##      NETHERITE (200)
execute as @a[tag=!titled_neth] at @s run execute as @n[type=marker,tag=title_neth,distance=..199.99] at @s run function journey:check_id with entity @s data

##      DIAMOND (100)
execute as @a[tag=!titled_diam] at @s run execute as @n[type=marker,tag=title_diam,distance=..99.99] at @s run function journey:check_id with entity @s data

##      GOLD (50)
execute as @a[tag=!titled_gold] at @s run execute as @n[type=marker,tag=title_gold,distance=..49.99] at @s run function journey:check_id with entity @s data

##      IRON (25)
execute as @a[tag=!titled_iron] at @s run execute as @n[type=marker,tag=title_iron,distance=..24.99] at @s run function journey:check_id with entity @s data


##  PLAYER TIMER DECREASE
execute if score #decrease_id jrn_sign_id matches 0 run function journey:timer_decrease with storage minecraft:journey jrn_sign_id


##  ACTIVE SIGN EFFECTS
execute as @a at @s run execute as @n[type=marker,tag=hope_title,distance=..15] at @s run function journey:sign_fx/main