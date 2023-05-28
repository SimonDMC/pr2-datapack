### Level 1

# Pick up bucket
execute as @a[tag=sdmc.in-plot,nbt=!{Inventory:[{id:"minecraft:bucket"}]}] at @s if entity @e[tag=sdmc.in-plot,tag=sdmc.display-bucket,distance=..1] run give @s bucket{CanPlaceOn:["minecraft:water"]}