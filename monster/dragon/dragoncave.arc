Object generate_dragon
race dragon
other_arch dragon
name dragon cave
generator 1
face dragoncave.111
animation dragoncave
is_animated 1
anim_speed 5
client_anim_random 1
speed 0.0008
level 10
hp 300
maxhp 300
ac 3
exp 1000
resist_fire 100
no_pick 1
alive 1
maxsp 1
weight 1000000
generator_limit 5
death_animation broken_generate_dragon
end
Object generate_cold_dragon
race dragon
other_arch cold_dragon
name dragon cave
generator 1
face dragoncave_green.111
speed 0.004000
level 10
hp 300
maxhp 300
ac 3
exp 1000
no_pick 1
alive 1
maxsp 1
weight 1000000
generator_limit 5
resist_cold 100
death_animation broken_generate_cold_dragon
end
Object generate_dragon_electric
race dragon
other_arch elec_dragon
speed 0.004000
resist_electricity 100
name dragon cave
generator 1
face dragoncave_blue.111
animation dragoncave_blue
is_animated 1
anim_speed 5
client_anim_random 1
level 10
hp 300
maxhp 300
ac 3
exp 1000
no_pick 1
alive 1
maxsp 1
weight 1000000
generator_limit 5
death_animation broken_generate_electric_dragon
end
Object broken_generate_dragon
face broken_dragoncave.111
name broken dragon cave
weight 500000
type 79
subtype 48
material 64
value 2000
nrof 1
client_type 8011
end
Object broken_generate_cold_dragon
face broken_dragoncave_green.111
name broken dragon cave
weight 500000
type 79
subtype 48
material 64
value 2000
nrof 1
client_type 8011
end
Object broken_generate_electric_dragon
face broken_dragoncave_blue.111
name broken dragon cave
weight 500000
type 79
subtype 48
material 64
value 2000
nrof 1
client_type 8011
end
