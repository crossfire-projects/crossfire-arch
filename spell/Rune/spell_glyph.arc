Object spell_glyph
anim_suffix spellcasting
name glyph
name_pl glyph
face spell_glyph.111
type 101
subtype 2
no_drop 1
invisible 1
level 12
value 120
grace 5
casting_time 15
skill praying
path_attuned 2048
msg
Creates a magical rune that can contain any prayer the caster knows. When preparing to inscribe the rune, the caster specifies the prayer they wish to embed in it; when the rune is triggered, the prayer is cast.
To use this, declare the name of the prayer to embed when you ready it:
'cast glyph holy word
endmsg
end
