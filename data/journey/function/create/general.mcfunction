$execute if score #debug jrn_sign_id matches 1 run say new sign created : $(material)

#ENTITY + default  marker data : check_id (for checking pour activer title)  (material : unused mais je le garde en souvenir d'une tentative sympa, voir commentaire dans function check_id
$summon marker ~ ~ ~ {Tags:["hope_title","title_$(material)"],data:{check_id:0,material:$(material)}}

#FORCELOAD
forceload add ~ ~

#SFX
$particle minecraft:wax_off ~ ~ ~ 0 0 0 15 $(particle1_count)
$particle minecraft:$(extra_particle) ~ ~0.5 ~ 0 0.25 0 0.03 20
playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
data modify block ~ ~ ~ front_text.has_glowing_text set value 1
data modify block ~ ~ ~ back_text.has_glowing_text set value 1

#par défaut, texte en BLANC (pour avoir titles blanc plutôt que noir)
execute if data block ~ ~ ~ front_text{color:"black"} run data modify block ~ ~ ~ front_text.color set value "white"
execute if data block ~ ~ ~ back_text{color:"black"} run data modify block ~ ~ ~ back_text.color set value "white"

##SET SIGN ID
execute as @n[tag=hope_title] at @s unless score @s jrn_sign_id matches -2147483648..2147483647 run function journey:create/set_id with storage minecraft:journey jrn_sign_id

#DELETE ITEM
kill @s