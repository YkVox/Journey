#PARTICLE + SOUND
particle minecraft:wax_off ~ ~ ~ 0 0 0 15 5
playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
summon marker ~ ~ ~ {Tags:["hopeTitle","ironBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}]