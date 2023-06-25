#PARTICLE + SOUND
particle minecraft:wax_off ~ ~0.5 ~ 0 0 0 15 50
particle minecraft:soul ~ ~0.5 ~ 0 0.25 0 0.03 20
playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 2 1
playsound minecraft:block.bell.resonate voice @a ~ ~ ~ 2 2

#GLOWING SIGN
data merge block ~ ~ ~ {GlowingText:1b}

#SUMMON MARKER
summon marker ~ ~ ~ {Tags:["hopeTitle","netheriteBlock"]}

#DELETE ITEM
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] if entity @e[tag=hopeTitle,sort=nearest,limit=1,distance=..5] unless entity @e[tag=inPlace,sort=nearest,limit=1,distance=..5] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}]