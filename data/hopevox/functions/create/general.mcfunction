#SOUND
playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
data merge block ~ ~ ~ {GlowingText:1b}

##SET SIGN ID
execute as @e[tag=hope_title,sort=nearest,limit=1] at @s unless score @s sign_id matches -2147483648..2147483647 run function hopevox:create/set_id

#DELETE ITEM
kill @s