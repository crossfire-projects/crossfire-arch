Object messageboard
name message board
msg
This is a public message board. If you don't know how to use it, say help.
endmsg
face messageboard.111
type 98
subtype 38
activate_on_push 1
activate_on_release 1
no_pick 1
client_type 25021
arch messageboard_say_event
end
end

Object messageboard_red
name Petitions for the DMs
msg
This board is for leaving messages for the DM. If you don't know how to use it, say help.
endmsg
face messageboard_red.111
type 98
subtype 38
activate_on_push 1
activate_on_release 1
no_pick 1
client_type 25021
arch messageboard_say_event
end
end

Object messageboard_say_event
title Python
slaying /python/IPO/board.py
type 116
subtype 6
face event_say.111
invisible 1
end
