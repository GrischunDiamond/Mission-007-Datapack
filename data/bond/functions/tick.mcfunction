# Enemies Spawner Grösse auswählen
execute as @e[type=armor_stand,tag=spawner,tag=!executed] at @s if entity @p[distance=..40] run function bond:enemies_spawner_size

# Enemies Spawnen
execute as @e[type=armor_stand,tag=spawner,scores={spawn_enemies=1..}] at @s run function bond:spawn_enemies

# Villager Spawnen
execute as @e[type=armor_stand,tag=villager_spawner,tag=!villager_spawn_executed] at @s if entity @p[distance=..40] run function bond:spawn_villager

