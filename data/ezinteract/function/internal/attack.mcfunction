advancement revoke @s only ezinteract:attack
execute as @e[type=interaction,distance=..10] store result score @s ezint_current_attack run data get entity @s attack.timestamp

#FIXME : Put this in its own function so that other checks can be made
execute as @e[type=interaction,distance=..10] if data entity @s Passengers[0] run function ezinteract:internal/updatedata

execute as @e[type=interaction,distance=..10] at @s unless score @s ezint_current_attack matches 0 run function ezinteract:internal/setredstone with entity @s data.redstoneposition
execute as @e[type=interaction,distance=..10] run data modify entity @s attack.timestamp set value 0