### Level 2

# Pick up crossbow
execute as @a[tag=sdmc.in-plot,nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] at @s if entity @e[tag=sdmc.in-plot,tag=sdmc.display-crossbow,distance=..1] run function simondmc:lvl2/replace_crossbow

# Replenish crossbow
execute as @a[tag=sdmc.in-plot,nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]}] at @s if entity @e[tag=sdmc.in-plot,tag=sdmc.display-crossbow,distance=..1] run function simondmc:lvl2/replace_crossbow