#create scoreboard
$scoreboard objectives add jrn_title_timer$(id) dummy

#player default value
$execute as @a at @s unless score @s jrn_title_timer$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer$(id) 0