### Level 5

# Pick up arrow
execute as @a[tag=sdmc.in-plot,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] at @s if entity @e[tag=sdmc.in-plot,tag=sdmc.display-arrow,distance=..1] run give @s arrow

# Flaming arrows
execute as @e[type=arrow,tag=sdmc.in-plot] run data merge entity @s {Fire:1000}

# Replenish dripleaf at set time
execute if entity @e[type=tnt,tag=sdmc.in-plot] run scoreboard players add sdmc.tnt sdmc.sys 1
# Continue timer even after TNT explodes
execute if score sdmc.tnt sdmc.sys matches 1.. unless entity @e[type=tnt,tag=sdmc.in-plot] run scoreboard players add sdmc.tnt sdmc.sys 1
execute if score sdmc.tnt sdmc.sys matches 100 run setblock ~-4 ~3 ~14 big_dripleaf[facing=east]

# Double TNT boost
execute at @e[type=tnt,tag=sdmc.in-plot,nbt={Fuse:1s}] run summon tnt

# Chain/TNT animation
execute if score sdmc.tnt sdmc.sys matches 20 run setblock ~-4 ~11 ~14 air
execute if score sdmc.tnt sdmc.sys matches 25 run setblock ~-4 ~12 ~14 air
execute if score sdmc.tnt sdmc.sys matches 30 run setblock ~-4 ~13 ~14 air
execute if score sdmc.tnt sdmc.sys matches 35 run setblock ~-4 ~14 ~14 air
# Temporary box to prevent shooting animated tnt
execute if score sdmc.tnt sdmc.sys matches 140 run fill ~-3 ~11 ~15 ~-5 ~14 ~13 barrier
execute if score sdmc.tnt sdmc.sys matches 140 run setblock ~-4 ~14 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~13 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~14 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~12 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~13 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~11 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~12 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~10 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~11 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 160 run fill ~-3 ~11 ~15 ~-5 ~14 ~13 air replace barrier
execute if score sdmc.tnt sdmc.sys matches 160 run scoreboard players reset sdmc.tnt sdmc.sys