### Level 2

# Pick up crossbow
execute as @a[tag=pr.target,nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] at @s if entity @e[tag=pr.target,tag=sdmc.display-crossbow,distance=..1] run function simondmc:lvl2/replace_crossbow

# Replenish crossbow
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]}] at @s if entity @e[tag=pr.target,tag=sdmc.display-crossbow,distance=..1] run function simondmc:lvl2/replace_crossbow