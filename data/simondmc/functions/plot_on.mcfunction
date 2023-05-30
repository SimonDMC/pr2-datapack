# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# Summon pickup-able items
# Display bucket (Level 1)
summon item ~4 ~30 ~-20 {CustomNameVisible:1b,PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-bucket"],CustomName:'{"text":"Bucket"}',Item:{id:"minecraft:bucket",Count:1b},Invulnerable:1b}
# Display crossbow (Level 2)
summon item ~7 ~31 ~7 {CustomNameVisible:1b,PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-crossbow"],CustomName:'{"text":"Crossbow"}',Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{}],ChargedProjectiles:[{},{id:"minecraft:arrow",Count:1b},{}],Charged:1b}},Invulnerable:1b}
# Display arrow (Level 5)
summon item ~2 ~1 ~19 {CustomNameVisible:1b,PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-arrow"],CustomName:'{"text":"Arrow"}',Item:{id:"minecraft:arrow",Count:1b},Invulnerable:1b}

# Create necessary scoreboards
scoreboard objectives add sdmc.sys dummy
scoreboard objectives add sdmc.item-timer dummy
scoreboard objectives add sdmc.arrow-timer dummy
scoreboard objectives add sdmc.axolotl-timer dummy
scoreboard objectives add sdmc.bone-meal dummy

# Scoreboard constants
scoreboard players set sdmc.const.1 sdmc.bone-meal 1

# TODO: Add plot name display text and/or credits