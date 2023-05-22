Object spell_sigil
anim_suffix spellcasting
name sigil
name_pl sigil
type 101
subtype 2
no_drop 1
invisible 1
level 12
value 120
sp 5
casting_time 15
skill evocation
path_attuned 2048
face spell_sigil.111
msg
Places a magical rune that can encapsulate any Evocation spell the caster knows. When preparing to inscribe the rune, the caster specifies the spell they wish to embed in it; when the rune is triggered, the spell is cast.
To use this, declare the name of the spell to embed when you ready it:
'cast sigil ball lightning
endmsg
end
