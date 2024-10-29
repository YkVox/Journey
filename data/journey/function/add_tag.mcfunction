execute if score #debug jrn_sign_id matches 1 run say give player tag

#general tag
tag @p[tag=!titled] add titled

#specific tag
execute if entity @s[tag=title_iron] run tag @p[tag=!titled_iron] add titled_iron
execute if entity @s[tag=title_gold] run tag @p[tag=!titled_gold] add titled_gold
execute if entity @s[tag=title_diam] run tag @p[tag=!titled_diam] add titled_diam
execute if entity @s[tag=title_neth] run tag @p[tag=!titled_neth] add titled_neth