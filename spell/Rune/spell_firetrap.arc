Object spell_firetrap
anim_suffix spellcasting
name firetrap
name_pl firetrap
type 101
subtype 2
no_drop 1
invisible 1
level 12
value 120
sp 5
casting_time 15
skill pyromancy
path_attuned 2048
face spell_firetrap.111
msg
Places a magical rune that can contain any Pyromancy spell the caster knows. When preparing to inscribe the rune, the caster specifies the spell they wish to embed in it; when the rune is triggered, the spell is cast.
To use this, declare the name of the spell to embed when you ready it:
'cast firetrap burning hands
endmsg
end
