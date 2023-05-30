### Level 3

# Refill barrel after a second of it being empty
execute unless block ~27 ~32 ~22 barrel{Items:[{Slot:13b}]} run scoreboard players add sdmc.barrel sdmc.sys 1
execute if score sdmc.barrel sdmc.sys matches 20.. run function simondmc:lvl3/reset_barrel
execute if score sdmc.barrel sdmc.sys matches 20.. run scoreboard players reset sdmc.barrel sdmc.sys

# Reset dripleaf after a second of it being "extended"
execute if block ~27 ~26 ~17 big_dripleaf run scoreboard players add sdmc.leaf sdmc.sys 1
execute if score sdmc.leaf sdmc.sys matches 20.. run setblock ~27 ~26 ~17 air
execute if score sdmc.leaf sdmc.sys matches 20.. run setblock ~27 ~25 ~17 big_dripleaf
execute if score sdmc.leaf sdmc.sys matches 20.. run scoreboard players reset sdmc.leaf sdmc.sys

# Clear bone meal while standing on basalt/smooth basalt
execute as @a[tag=sdmc.in-plot,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-.1 ~ smooth_basalt run function simondmc:lvl3/clear_bonemeal
execute as @a[tag=sdmc.in-plot,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-.1 ~ basalt run function simondmc:lvl3/clear_bonemeal