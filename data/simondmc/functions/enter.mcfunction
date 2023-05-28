# This function runs as and at all players that enter your plot



# Reset player to a default state
effect clear @s
clear @s
effect give @s instant_health 1 10 true

# Give effects for plot
effect give @s night_vision infinite 0 true
effect give @s resistance infinite 9 true
# (saturation is in core)

# TODO: Maybe some introductory message/jingle?