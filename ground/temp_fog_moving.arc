Object temp_fog_moving
name fog
face fog.111
animation temp_fog
smoothlevel 180
type 67
move_type fly_low
no_pick 1
is_used_up 1
resist_fire 100
resist_electricity 100
resist_confusion 100
resist_acid 100
resist_drain 100
resist_weaponmagic 100
resist_ghosthit 100
resist_poison 100
resist_slow 100
resist_paralyze 100
resist_turn_undead 100
resist_fear 100
resist_cancellation 100
resist_deplete 100
resist_death 100
material 1
changing 1
blocksview 1
weight 1000
value 1
speed 0.5
arch event_destroy
name GenerateFog
title Python
slaying /python/Moving_Fog.py
end
end
