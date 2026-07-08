#Automatically updates interaction entities from previous versions of the datapack

#V1 -> V1.1
execute on passengers if data entity @s data.redstonepos[0] store result entity @s data.redstoneposition.x int 1 run data get entity @s data.redstonepos[0]
execute on passengers if data entity @s data.redstonepos[1] store result entity @s data.redstoneposition.y int 1 run data get entity @s data.redstonepos[1]
execute on passengers if data entity @s data.redstonepos[2] store result entity @s data.redstoneposition.z int 1 run data get entity @s data.redstonepos[2]

#V1.1 -> V1.2
execute store result entity @s data.redstoneposition.x int 1 run data get entity @s Passengers[0].data.redstoneposition.x
execute store result entity @s data.redstoneposition.y int 1 run data get entity @s Passengers[0].data.redstoneposition.y
execute store result entity @s data.redstoneposition.z int 1 run data get entity @s Passengers[0].data.redstoneposition.z
execute on passengers run kill @s