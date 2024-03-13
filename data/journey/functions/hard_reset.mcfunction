
function journey:uninstall
function journey:load/main

execute as @e[tag=hope_title] at @s unless score @s sign_id matches -2147483648..2147483647 run function journey:create/set_id
