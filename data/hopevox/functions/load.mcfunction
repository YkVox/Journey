#execute as @a at @s run tellraw @s[gamemode=creative] ["",{"text":" \u0020 Hope's ","italic":true,"underlined":true},{"text":"Dark Souls Titles","bold":true,"italic":true,"underlined":true},{"text":" sucessfully activated \u0020 ","italic":true,"underlined":true}]
scoreboard objectives add title_timer dummy

scoreboard objectives add t_t1 dummy
scoreboard objectives add t_t2 dummy
scoreboard objectives add t_t3 dummy
scoreboard objectives add t_t4 dummy
scoreboard objectives add t_t5 dummy
scoreboard objectives add t_t6 dummy
scoreboard objectives add t_t7 dummy
scoreboard objectives add t_t8 dummy
scoreboard objectives add t_t9 dummy
scoreboard objectives add t_t10 dummy
scoreboard objectives add t_t11 dummy
scoreboard objectives add t_t12 dummy
scoreboard objectives add t_t13 dummy
scoreboard objectives add t_t14 dummy
scoreboard objectives add t_t15 dummy
scoreboard objectives add t_t16 dummy
scoreboard objectives add t_t17 dummy
scoreboard objectives add t_t18 dummy
scoreboard objectives add t_t19 dummy
scoreboard objectives add t_t20 dummy

#set default player timer score to 0
execute as @a at @s unless score @s t_t1 matches -2147483648..2147483647 run scoreboard players set @s t_t1 0
execute as @a at @s unless score @s t_t2 matches -2147483648..2147483647 run scoreboard players set @s t_t2 0
execute as @a at @s unless score @s t_t3 matches -2147483648..2147483647 run scoreboard players set @s t_t3 0
execute as @a at @s unless score @s t_t4 matches -2147483648..2147483647 run scoreboard players set @s t_t4 0
execute as @a at @s unless score @s t_t5 matches -2147483648..2147483647 run scoreboard players set @s t_t5 0
execute as @a at @s unless score @s t_t6 matches -2147483648..2147483647 run scoreboard players set @s t_t6 0
execute as @a at @s unless score @s t_t7 matches -2147483648..2147483647 run scoreboard players set @s t_t7 0
execute as @a at @s unless score @s t_t8 matches -2147483648..2147483647 run scoreboard players set @s t_t8 0
execute as @a at @s unless score @s t_t9 matches -2147483648..2147483647 run scoreboard players set @s t_t9 0
execute as @a at @s unless score @s t_t10 matches -2147483648..2147483647 run scoreboard players set @s t_t10 0
execute as @a at @s unless score @s t_t11 matches -2147483648..2147483647 run scoreboard players set @s t_t11 0
execute as @a at @s unless score @s t_t12 matches -2147483648..2147483647 run scoreboard players set @s t_t12 0
execute as @a at @s unless score @s t_t13 matches -2147483648..2147483647 run scoreboard players set @s t_t13 0
execute as @a at @s unless score @s t_t14 matches -2147483648..2147483647 run scoreboard players set @s t_t14 0
execute as @a at @s unless score @s t_t15 matches -2147483648..2147483647 run scoreboard players set @s t_t15 0
execute as @a at @s unless score @s t_t16 matches -2147483648..2147483647 run scoreboard players set @s t_t16 0
execute as @a at @s unless score @s t_t17 matches -2147483648..2147483647 run scoreboard players set @s t_t17 0
execute as @a at @s unless score @s t_t18 matches -2147483648..2147483647 run scoreboard players set @s t_t18 0
execute as @a at @s unless score @s t_t19 matches -2147483648..2147483647 run scoreboard players set @s t_t19 0
execute as @a at @s unless score @s t_t20 matches -2147483648..2147483647 run scoreboard players set @s t_t20 0

#sign id
scoreboard objectives add sign_id dummy

#title cd
scoreboard objectives add cd_value dummy
scoreboard players set #cd_value cd_value 1200



#message
execute as @a at @s run tellraw @s [{"text":"Welcome to ","color":"gray","italic":true},{"text":"Journey","color":"gold","bold":true,"italic":false}]
execute as @a at @s run tellraw @s [{"text":"originally from","color":"gray","italic":true},{"text":" Hope's ","color":"white","bold":false,"italic":false},{"text":"Dark Souls Titles","color":"white","bold":true,"italic":false}]
execute as @a at @s run tellraw @s {"text":" "}
execute as @a at @s run tellraw @s [{"text":"Sucessfully activated! ","color":"light_purple","bold":false},{"text":"Version is ","color":"gray","bold":false,"italic":true},{"text":"[","color":"white","bold":false,"italic":false},{"text":"1.3","color":"gold","bold":true},{"text":"]","color":"white","bold":false}]