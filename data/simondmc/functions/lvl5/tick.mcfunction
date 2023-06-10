### Level 5

# Pick up arrow
execute as @a[tag=pr.target,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] at @s if entity @e[tag=pr.target,tag=sdmc.display-arrow,distance=..1] run give @s arrow

# Flaming arrows
execute as @e[type=arrow,tag=pr.target] run data merge entity @s {Fire:1000}

# TNT timer
execute if entity @e[type=tnt,tag=pr.target] run scoreboard players add sdmc.tnt sdmc.sys 1
# Continue timer even after TNT explodes
execute if score sdmc.tnt sdmc.sys matches 1.. unless entity @e[type=tnt,tag=pr.target] run scoreboard players add sdmc.tnt sdmc.sys 1

# Double TNT boost
# (this is done due to one TNT not launching high enough)
execute at @e[type=tnt,tag=pr.target,nbt={Fuse:1s}] run summon tnt

# Chain/TNT animation
execute if score sdmc.tnt sdmc.sys matches 20 run setblock ~-4 ~11 ~14 air
execute if score sdmc.tnt sdmc.sys matches 25 run setblock ~-4 ~12 ~14 air
execute if score sdmc.tnt sdmc.sys matches 30 run setblock ~-4 ~13 ~14 air
execute if score sdmc.tnt sdmc.sys matches 35 run setblock ~-4 ~14 ~14 air
execute if score sdmc.tnt sdmc.sys matches 140 run setblock ~-4 ~14 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~13 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~14 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~12 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~13 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~11 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~12 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~10 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~11 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 160 run scoreboard players reset sdmc.tnt sdmc.sys

# Replenish dripleaf in time for player to land on and jump off of
execute if score sdmc.tnt sdmc.sys matches 100 run setblock ~-4 ~3 ~14 big_dripleaf[facing=east]

# Temporary protective box to prevent shooting TNT in refill animation
execute if score sdmc.tnt sdmc.sys matches 140 run fill ~-3 ~11 ~15 ~-5 ~14 ~13 barrier
execute if score sdmc.tnt sdmc.sys matches 160 run fill ~-3 ~11 ~15 ~-5 ~14 ~13 air replace barrier

# Block off exit between TNT explosion and dripleaf replenishing to prevent being boosted by TNT directly into exit
execute if score sdmc.tnt sdmc.sys matches 80 run fill ~-8 ~5 ~14 ~-7 ~8 ~12 barrier replace structure_void
execute if score sdmc.tnt sdmc.sys matches 100 run fill ~-8 ~5 ~14 ~-7 ~8 ~12 structure_void replace barrier