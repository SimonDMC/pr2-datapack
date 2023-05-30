### Clears a player's bonemeal, plays a sound effect and replenishes both the barrel and the dripleaf
# Called by lvl3/tick
playsound block.fire.extinguish master @s
function simondmc:lvl3/reset_barrel
# line below doesn't work
setblock ~27 ~26 ~20 big_dripleaf[tilt=none]
clear @s bone_meal