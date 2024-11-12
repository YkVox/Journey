#new_player_login_set_default_timer_value
schedule function journey:n_pl_login_set_def_tim_val 60s

#new max
execute store result score #new_max jrn_check run execute if entity @a

#if new player login
execute if score #new_max jrn_check > #max jrn_check run execute as @e[tag=hope_title] at @s run function journey:def_player_timer_val with entity @s data

#previous max
execute store result score #max jrn_check run execute if entity @a