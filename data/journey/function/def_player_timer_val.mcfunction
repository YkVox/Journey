$execute as @a at @s unless score @s jrn_title_timer$(id) matches -2147483648..2147483647 run scoreboard players set @s jrn_title_timer$(id) 0
#si veut inclure une function pour reset, doit être à part, sinon reset a chaque fois que joueur se co
#$scoreboard players set @a jrn_title_timer$(id) 0