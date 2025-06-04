# a specific type of spell effect (cone) which operates
# as a ground object.
Object lava
type 102
subtype 7
level 1
move_on walk
wc -30
name lava
face lava.111
animation lava
smoothlevel 28
speed 0.2
no_pick 1
attacktype 4
duration 60
dam 3
is_floor 1
move_block boat swim
glow_radius 2
end
#
Object permanent_lava
type 102
subtype 7
level 1
move_on walk
wc -30
lifesave 1
name lava
face lava.111
animation permanent_lava
speed 0.2
no_pick 1
smoothlevel 28
attacktype 4
hp 1
dam 3
is_floor 1
move_block boat swim
glow_radius 2
end
