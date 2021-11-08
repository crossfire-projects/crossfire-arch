# Fake chests.
# Because why not.
# Generally, these should be used on random maps
Object mimic
face chest_1.111
type 162
name chest
# Base stats for what a level 0 mimic would be
hp 100
maxhp 100
dam 20
ac 10
wc 5
exp 500
speed 0.1
# Adjustments for the level provided (either map difficulty or arch level)
ac_per_level -0.5
wc_per_level -0.5
dam_per_level 2
hp_per_level 100
xp_per_level 1000
speed_per_level 0.01
# These are set to 1 when the mimic is activated.
alive 0
monster 0
# Static stuff -- unchanged across all mimic of this type
Con 5
move_type walk
run_away 0
material 18
resist_physical 50
resist_magic 100
resist_cold 50
resist_fire 50
resist_electricity 50
resist_poison 100
resist_drain 100
resist_deplete 100
resist_slow -10
resist_paralyze -10
resist_fear 100
resist_death 100
resist_confusion 50
value 50
weight 50000
client_type 51
identified 1
randomitems mimic
name_pl chests
end
