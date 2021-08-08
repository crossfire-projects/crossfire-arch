Object rain2
name rain
face rain.111
animation rain
material 512
no_pick 1
is_water 1
map_layer fly
anim_speed 1
client_anim_random 1
end
# Weather-interaction-ready version :)
Object rain2_weather
name puddle
face rain2.111
material 512
no_pick 1
is_water 1
# This part only functions if you don't override material as 0.
is_lightable 1
food 2
changing 1
other_arch fog
end
