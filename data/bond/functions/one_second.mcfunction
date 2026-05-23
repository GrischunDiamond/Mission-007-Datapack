schedule function bond:one_second 1s replace

# Eintritt Commandroom
execute positioned 245 75 46 as @p[distance=..3] if entity @s[tag=Admin] run fill 245 75 46 245 77 46 air
execute positioned 245 75 46 as @p[distance=3..] run fill 245 75 46 245 77 46 mossy_stone_bricks

# Enemies respawnen sobald Spieler weg ist
execute as @e[type=armor_stand,tag=spawner,tag=executed] at @s if entity @p[distance=100..] unless score @s spawnedEnemies matches 10.. run tag @s remove executed
# TODO: Find a good Size when spawning new Enemies

# Villager respawnne sobald sie vielleicht despawnen
execute as @e[type=armor_stand,tag=villager_spawner,tag=villager_spawn_executed] at @s if entity @p[distance=40..] unless entity @e[type=villager,distance=..20] run tag @s remove villager_spawn_executed

# Enemies Angry Stufe
execute as @a at @s if entity @e[tag=enemie,distance=..40] run function bond:spawner/enemies_angry_level


# TRIGGER
# Trigger Toggle Spawner (Visible/Hidden)
execute as @a[scores={toogleSpawner=1..}] at @s as @e[tag=spawner, type=armor_stand, distance=..5] run function bond:spawner/toggle_spawner
scoreboard players reset @a toogleSpawner
scoreboard players enable @a toogleSpawner

# Trigger Find Spawner tempararly
execute as @a[scores={findSpawner=1..}] at @s run function bond:spawner/find_spawner
scoreboard players reset @a findSpawner
scoreboard players enable @a findSpawner

# ENEMIES COUNTER SPAWNER
execute as @e[type=armor_stand,tag=spawner,tag=executed] at @s store result score @s spawnedEnemies if entity @e[tag=enemie,distance=..50]

# When few Enemies are left
execute as @e[type=armor_stand,tag=spawner,tag=executed, tag=small_enemies_spawner] at @s if score @s spawnedEnemies matches ..5 if entity @p[distance=..30] run effect give @e[tag=enemie, distance=..50] glowing 2
execute as @e[type=armor_stand,tag=spawner,tag=executed, tag=medium_enemies_spawner] at @s if score @s spawnedEnemies matches ..10 if entity @p[distance=..30] run effect give @e[tag=enemie, distance=..50] glowing 2
execute as @e[type=armor_stand,tag=spawner,tag=executed, tag=big_enemies_spawner] at @s if score @s spawnedEnemies matches ..15 if entity @p[distance=..30] run effect give @e[tag=enemie, distance=..50] glowing 2









