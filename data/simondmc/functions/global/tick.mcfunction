### Global

# Give in-plot tag to all entities in plot (temporary until dom fixes core)
execute positioned ~-39 ~-63 ~-39 as @e[dx=78,dy=137,dz=78] run tag @s add sdmc.in-plot

# Quick item pickup
execute as @e[type=item,tag=sdmc.in-plot] store result score @s sdmc.item-timer run data get entity @s PickupDelay
execute as @e[type=item,tag=sdmc.in-plot,tag=!sdmc.display-item] unless score @s sdmc.item-timer matches ..10 run data merge entity @s {PickupDelay:10}

# Remove ground items near display items
execute at @e[type=item,tag=sdmc.in-plot,tag=sdmc.display-bucket] run kill @e[type=item,tag=sdmc.in-plot,distance=..3,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:bucket"}}]
execute at @e[type=item,tag=sdmc.in-plot,tag=sdmc.display-crossbow] run kill @e[type=item,tag=sdmc.in-plot,distance=..3,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:crossbow"}}]
execute at @e[type=item,tag=sdmc.in-plot,tag=sdmc.display-arrow] run kill @e[type=item,tag=sdmc.in-plot,distance=..3,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:arrow"}}]

# Kill ground arrows after a few ticks
execute as @e[type=arrow,tag=sdmc.in-plot,nbt={inGround:1b}] run scoreboard players add @s sdmc.arrow-timer 1
execute as @e[type=arrow,tag=sdmc.in-plot] if score @s sdmc.arrow-timer matches 5.. run kill @s