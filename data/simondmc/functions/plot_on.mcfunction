# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# Summon pickup-able items and their names
# Display bucket (Level 1)
summon item ~4 ~30 ~-20 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-bucket"],Item:{id:"minecraft:bucket",Count:1b},Invulnerable:1b}
summon text_display ~4 ~30.65 ~-20 {billboard:"center",default_background:1b,text:'{"text":"Bucket"}',Tags:["sdmc.display-name"]}
# Display crossbow (Level 2)
summon item ~7 ~31 ~7 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-crossbow"],Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{}],ChargedProjectiles:[{},{id:"minecraft:arrow",Count:1b},{}],Charged:1b}},Invulnerable:1b}
summon text_display ~7 ~31.65 ~7 {billboard:"center",default_background:1b,text:'{"text":"Crossbow"}',Tags:["sdmc.display-name"]}
# Display arrow (Level 5)
summon item ~2 ~1 ~19 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-arrow"],Item:{id:"minecraft:arrow",Count:1b},Invulnerable:1b}
summon text_display ~2 ~1.65 ~19 {billboard:"center",default_background:1b,text:'{"text":"Arrow"}',Tags:["sdmc.display-name"]}

# Create necessary scoreboards
scoreboard objectives add sdmc.sys dummy
scoreboard objectives add sdmc.item-pickup-timer dummy
scoreboard objectives add sdmc.item-despawn-timer dummy
scoreboard objectives add sdmc.arrow-timer dummy
scoreboard objectives add sdmc.axolotl-timer dummy
scoreboard objectives add sdmc.item-counter dummy

# Scoreboard constants
scoreboard players set sdmc.const.1 sdmc.item-counter 1

# TODO: Add plot name display text and/or credits