# Summoners need a first level spell, and this is it - make it
# so most of the values don't scale - otherwise, this could be too
# powerful at higher levels.
Object spell_lesser_summon_golem
anim_suffix spellcasting
name summon lesser golem
name_pl summon lesser golem
face spell_lesser_golem.111
level 1
sp 3
casting_time 10
path_attuned 64
other_arch golem
dam 25
duration 75
duration_modifier 2
range_modifier 10
maxsp 15
type 101
subtype 12
value 10
attacktype 1
no_drop 1
invisible 1
skill summoning
wc_increase_rate 2
msg
The power to call forth life and thought, and with it animate lifeless clay, is the realm of the summoner. Although small, a golem's relentless devotion to its master allows summoners to participate in the frontline of combat, bash down doors, and trigger traps, all from a safe distance. The summoning does not last long, however, and damage to the golem's body shortens it further.
This spell summons a controlled minion; its movement can be directed with Fire + the direction keys, but you can only have one such minion at a time.
endmsg
end
