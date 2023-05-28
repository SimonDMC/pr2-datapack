### Global

# Give in-plot tag to all entities in plot (pr.target would target entities from other active plots as well)
execute positioned ~-39 ~-63 ~-39 as @e[dx=78,dy=137,dz=78] run tag @s add sdmc.in-plot

# Quick item pickup
execute as @e[type=item,tag=sdmc.in-plot] store result score @s sdmc.item-timer run data get entity @s PickupDelay
execute as @e[type=item,tag=sdmc.in-plot,tag=!sdmc.display-item] unless score @s sdmc.item-timer matches ..10 run data merge entity @s {PickupDelay:10}