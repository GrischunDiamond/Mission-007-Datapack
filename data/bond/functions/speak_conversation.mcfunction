scoreboard players add @e[type=armor_stand,name="conversation"] spokesperson 1

execute as @e[type=armor_stand,name="conversation",limit=1] if score @s spokesperson matches 1 at @s run function bond:kyra_dialog
execute as @e[type=armor_stand,name="conversation",limit=1] if score @s spokesperson matches 2 at @s run function bond:007_dialog

execute as @e[type=armor_stand,name="conversation"] if score @s spokesperson matches 2 run scoreboard players set @e[type=armor_stand,name="conversation"] spokesperson 0


