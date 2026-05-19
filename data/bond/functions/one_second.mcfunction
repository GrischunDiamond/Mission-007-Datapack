schedule function bond:one_second 1s replace

# Eintritt Commandroom
execute positioned 245 75 46 as @p[distance=..3] if entity @s[tag=Admin] run fill 245 75 46 245 77 46 air
execute positioned 245 75 46 as @p[distance=3..] run fill 245 75 46 245 77 46 mossy_stone_bricks

# Enemies respawnen sobald Spieler weg ist
execute as @e[type=armor_stand,tag=spawner,tag=executed] at @s if entity @p[distance=40..] unless entity @e[tag=enemie,distance=..30] run tag @s remove executed

# Villager respawnne sobald sie vielleicht despawnen
execute as @e[type=armor_stand,tag=villager_spawner,tag=villager_spawn_executed] at @s if entity @p[distance=40..] unless entity @e[type=villager,distance=..20] run tag @s remove villager_spawn_executed

# Enemies Angry Stufe
execute as @a at @s if entity @e[tag=enemie,distance=..40] run function bond:enemies_angry_level










