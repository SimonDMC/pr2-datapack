### Level 4

# Replace axolotl bucket
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:axolotl_bucket"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:axolotl_bucket",tag:{CanPlaceOn:["minecraft:big_dripleaf"]}}]}] run function simondmc:lvl4/replace_axolotl_bucket

# Replace empty bucket
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bucket"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:bucket",tag:{CanPlaceOn:["minecraft:water"]}}]}] run function simondmc:lvl4/replace_empty_bucket

# Spawn new axolotl after a second if there are none
execute positioned ~12 ~29 ~16 unless entity @e[type=axolotl,dx=5,dy=4,dz=6,tag=pr.target,tag=sdmc.pond-axolotl] run scoreboard players add sdmc.axolotl sdmc.sys 1
execute if score sdmc.axolotl sdmc.sys matches 20.. run summon axolotl ~14 ~29 ~19 {Tags:["sdmc.pond-axolotl"],Invulnerable:1b}
execute if score sdmc.axolotl sdmc.sys matches 20.. run scoreboard players reset sdmc.axolotl sdmc.sys

# Remove door axolotl and water after two seconds
scoreboard players add @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] sdmc.axolotl-timer 1
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. run setblock ~11 ~31 ~14 big_dripleaf[facing=east,tilt=full]
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. run kill @s

# Make sure you can't steal waterfall
setblock ~14 ~32 ~22 water

# Prevent skipping level by smuggling a loaded crossbow out of level 2
execute positioned ~11 ~31 ~14 run kill @e[type=arrow,tag=pr.target,distance=..3]