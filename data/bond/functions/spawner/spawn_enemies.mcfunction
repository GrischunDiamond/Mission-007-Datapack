summon pillager ~ ~ ~



summon vindicator ~ ~ ~
summon vindicator ~ ~ ~

tag @e[distance=..5,type=!armor_stand,type=!player] add enemie
# Enemies verteilen
execute as @s at @s if entity @s[name=small_enemies_spawner] run spreadplayers ~ ~ 1 6 false @e[tag=enemie,distance=..5]
execute as @s at @s if entity @s[name=small_enemies_spawner_trap] run spreadplayers ~ ~ 4 6 false @e[tag=enemie,distance=..5]

execute as @s at @s if entity @s[name=medium_enemies_spawner] run spreadplayers ~ ~ 1 10 false @e[tag=enemie,distance=..5]
execute as @s at @s if entity @s[name=medium_enemies_spawner_trap] run spreadplayers ~ ~ 8 10 false @e[tag=enemie,distance=..5]

execute as @s at @s if entity @s[name=big_enemies_spawner] run spreadplayers ~ ~ 1 14 false @e[tag=enemie,distance=..5]
execute as @s at @s if entity @s[name=big_enemies_spawner_trap] run spreadplayers ~ ~ 12 14 false @e[tag=enemie,distance=..5]

execute as @e[tag=enemie] at @s run tp @s ~ ~ ~

scoreboard players remove @s spawn_enemies 1


