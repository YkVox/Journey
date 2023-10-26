
function hopevox:uninstall
function hopevox:load/main

execute as @e[tag=hope_title] at @s unless score @s sign_id matches -2147483648..2147483647 run function hopevox:create/set_id
