# Enemies spawnen
execute as @s if entity @s[name=small_enemies_spawner] run scoreboard players set @e[type=armor_stand] spawn_enemies 4
execute as @s if entity @s[name=small_enemies_spawner_trap] run scoreboard players set @e[type=armor_stand] spawn_enemies 4

execute as @s if entity @s[name=medium_enemies_spawner] run scoreboard players set @e[type=armor_stand] spawn_enemies 10

execute as @s if entity @s[name=big_enemies_spawner] run scoreboard players set @e[type=armor_stand] spawn_enemies 16

tag @s add executed

