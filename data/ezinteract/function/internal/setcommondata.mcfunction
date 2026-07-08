tag @s add ezint_entity
data merge entity @s {response:1b}
execute store result entity @s data.redstoneposition.x int 1 run data get entity @s Pos[0]
execute store result entity @s data.redstoneposition.y int 1 run data get entity @s Pos[1]
execute store result entity @s data.redstoneposition.z int 1 run data get entity @s Pos[2]