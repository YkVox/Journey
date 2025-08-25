playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#delete old poi
$execute as @e[tag=$(destiny_tag)] at @s run setblock ~ ~ ~ air
$execute as @e[tag=$(destiny_tag)] at @s run function journey:sign_fx/break

#new poi
$setblock ~ ~ ~ pale_oak_sign{front_text:{color:"$(color)",has_glowing_text:1b,messages:["$(text)","","",""]}} replace
$summon marker ~ ~ ~ {Tags:["hope_title","title_$(material)","$(destiny_tag)"],data:{check_id:0}}

forceload add ~ ~

#sign id
execute as @n[tag=hope_title] at @s unless score @s jrn_sign_id matches -2147483648..2147483647 \
    run function journey:create/set_id with storage minecraft:journey jrn_sign_id