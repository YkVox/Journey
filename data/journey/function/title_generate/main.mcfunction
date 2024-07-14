execute if score #debug jrn_sign_id matches 1 run say generate title

#macro pour mettre le "font" si transposia title enabled ou non ? bon faut faire pour chaque couleur ...
##TITLE
#transposia titles
execute if score #mode jrn_sign_id matches 1 run function journey:title_generate/transposia
#default titles
execute if score #mode jrn_sign_id matches 0 run function journey:title_generate/default
