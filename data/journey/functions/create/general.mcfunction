#SOUND
playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
#data merge block ~ ~ ~ {GlowingText:1b}
data modify block ~ ~ ~ front_text.has_glowing_text set value 1
data modify block ~ ~ ~ back_text.has_glowing_text set value 1

##SET SIGN ID
execute as @e[tag=hope_title,sort=nearest,limit=1] at @s unless score @s sign_id matches -2147483648..2147483647 run function journey:create/set_id

#DELETE ITEM
kill @s