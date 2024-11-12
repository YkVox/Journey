#set sign id store in sign data for giving player default value on login via macro (si player non présent au moment création panneau, utile lors du load et lors function nouveau player)
$data modify entity @s data.id set value $(id)

#create scoreboard
$scoreboard objectives add jrn_title_timer$(id) dummy

#player default value
$execute as @a at @s unless score @s jrn_title_timer$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer$(id) 0