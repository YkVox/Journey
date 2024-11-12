#specific tags
execute at @s[tag=titled_neth] unless entity @n[type=marker,tag=title_neth,distance=..200] run tag @s remove titled_neth
execute at @s[tag=titled_diam] unless entity @n[type=marker,tag=title_diam,distance=..100] run tag @s remove titled_diam
execute at @s[tag=titled_gold] unless entity @n[type=marker,tag=title_gold,distance=..50] run tag @s remove titled_gold
execute at @s[tag=titled_iron] unless entity @n[type=marker,tag=title_iron,distance=..25] run tag @s remove titled_iron

#general tag
execute \
    unless entity @s[tag=titled_iron] \
    unless entity @s[tag=titled_gold] \
    unless entity @s[tag=titled_diam] \
    unless entity @s[tag=titled_neth] \
        run tag @s remove titled