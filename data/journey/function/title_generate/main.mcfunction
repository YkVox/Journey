$execute if score #debug jrn_sign_id matches 1 run say will generate title : $(material)

##TITLE
#transposia titles
$execute if score #mode jrn_sign_id matches 1 run function journey:title_generate/transposia {material:$(material)}
#default titles
$execute if score #mode jrn_sign_id matches 0 run function journey:title_generate/default {material:$(material)}
