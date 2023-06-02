### Level 1

# Pick up bucket
execute as @a[tag=pr.target,nbt=!{Inventory:[{id:"minecraft:bucket"}]}] at @s if entity @e[tag=pr.target,tag=sdmc.display-bucket,distance=..1] run give @s bucket{CanPlaceOn:["minecraft:water"]}