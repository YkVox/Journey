#execute as @a at @s run tellraw @s[gamemode=creative] ["",{"text":" \u0020 Hope's ","italic":true,"underlined":true},{"text":"Dark Souls Titles","bold":true,"italic":true,"underlined":true},{"text":" sucessfully activated \u0020 ","italic":true,"underlined":true}]
scoreboard objectives add title_timer dummy

execute as @a at @s run tellraw @s [{"text":"Welcome to ","color":"gray","italic":true},{"text":"Journey","color":"gold","bold":true,"italic":false}]
execute as @a at @s run tellraw @s [{"text":"originally from","color":"gray","italic":true},{"text":" Hope's ","color":"white","bold":false,"italic":false},{"text":"Dark Souls Titles","color":"white","bold":true,"italic":false}]
execute as @a at @s run tellraw @s {"text":" "}
execute as @a at @s run tellraw @s [{"text":"Sucessfully activated! ","color":"light_purple","bold":false},{"text":"Version is ","color":"gray","bold":false,"italic":true},{"text":"[","color":"white","bold":false,"italic":false},{"text":"1.3","color":"gold","bold":true},{"text":"]","color":"white","bold":false}]