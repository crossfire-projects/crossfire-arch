Starting sshuttle proxy (version 1.1.2).
c : Starting firewall manager with command: ['/opt/homebrew/Cellar/sshuttle/1.1.2/libexec/bin/python', '/opt/homebrew/bin/sshuttle', '-v', '--method', 'auto', '--firewall']
fw: Starting firewall with Python version 3.12.6
fw: ready method name pf.
c : IPv6 enabled: Using default IPv6 listen address ::1
c : Method: pf
c : IPv4: on
c : IPv6: on
c : UDP : off (not available with pf method)
c : DNS : off (available)
c : User: off (not available with pf method)
c : Subnets to forward through remote host (type, IP, cidr mask width, startPort, endPort):
c :   (<AddressFamily.AF_INET: 2>, '192.168.1.0', 24, 0, 0)
c : Subnets to exclude from forwarding:
c :   (<AddressFamily.AF_INET: 2>, '127.0.0.1', 32, 0, 0)
c :   (<AddressFamily.AF_INET6: 30>, '::1', 128, 0, 0)
c : TCP redirector listening on ('::1', 12300, 0, 0).
c : TCP redirector listening on ('127.0.0.1', 12300).
c : Starting client with Python version 3.12.6
c : Connecting to server...
 s: Running server on remote host with /usr/bin/python3 (version 3.9.2)
 s: latency control setting = True
 s: auto-nets:False
c : Connected to server.
fw: setting up.
fw: >> pfctl -s Interfaces -i lo -v
fw: >> pfctl -f /dev/stdin
fw: >> pfctl -s all
fw: >> pfctl -a sshuttle6-12300 -f /dev/stdin
fw: >> pfctl -E
fw: >> pfctl -s Interfaces -i lo -v
fw: >> pfctl -s all
fw: >> pfctl -a sshuttle-12300 -f /dev/stdin
fw: >> pfctl -E
c : Accept TCP: 10.0.1.4:57859 -> 192.168.1.101:5001.
c : Accept TCP: 10.0.1.4:57875 -> 192.168.1.101:5001.
c : SW'unknown':Mux#2: deleting (3 remain)
c : SW#-1:10.0.1.4:57875: deleting (2 remain)
 s: SW#-1:192.168.1.101:5001: deleting (3 remain)
 s: SW'unknown':Mux#2: deleting (2 remain)
c : Accept TCP: 10.0.1.4:57876 -> 192.168.1.101:5001.
c : Accept TCP: 10.0.1.4:61825 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:57859: deleting (5 remain)
c : SW'unknown':Mux#1: deleting (4 remain)
 s: SW'unknown':Mux#1: deleting (5 remain)
 s: SW#4:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 4 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 4 got cmd=TCP_EOF len=0
 s: SW'unknown':Mux#4: deleting (3 remain)
 s: SW#6:192.168.1.101:5001: deleting (2 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:65531 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
c : Accept TCP: 10.0.1.4:49485 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#5: deleting (5 remain)
 s: SW#4:192.168.1.101:5001: deleting (4 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#8:10.0.1.4:65531: deleting (7 remain)
c : SW'unknown':Mux#5: deleting (6 remain)
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#6: deleting (3 remain)
 s: SW#6:192.168.1.101:5001: deleting (2 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:49975 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:49975: deleting (7 remain)
c : SW'unknown':Mux#7: deleting (6 remain)
 s: SW'unknown':Mux#7: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:50354 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:50354: deleting (7 remain)
c : SW'unknown':Mux#8: deleting (6 remain)
 s: SW'unknown':Mux#8: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : SW#12:10.0.1.4:49485: deleting (5 remain)
c : SW'unknown':Mux#6: deleting (4 remain)
c : Accept TCP: 10.0.1.4:50846 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#9: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:51617 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#10: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#12:10.0.1.4:51617: deleting (7 remain)
c : SW'unknown':Mux#10: deleting (6 remain)
c : Accept TCP: 10.0.1.4:52137 -> 192.168.1.101:5001.
c : SW'unknown':Mux#11: deleting (7 remain)
c : SW#-1:10.0.1.4:52137: deleting (6 remain)
 s: SW'unknown':Mux#11: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:52633 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#12: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : SW#12:10.0.1.4:52633: deleting (7 remain)
c : SW'unknown':Mux#12: deleting (6 remain)
c : Accept TCP: 10.0.1.4:53377 -> 192.168.1.101:5001.
c : SW'unknown':Mux#9: deleting (7 remain)
c : SW#8:10.0.1.4:50846: deleting (6 remain)
c : SW#12:10.0.1.4:53377: deleting (5 remain)
c : SW'unknown':Mux#13: deleting (4 remain)
 s: SW'unknown':Mux#13: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:53863 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#14: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:54349 -> 192.168.1.101:5001.
c : SW#12:10.0.1.4:54349: deleting (7 remain)
c : SW'unknown':Mux#15: deleting (6 remain)
 s: SW'unknown':Mux#15: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:55136 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#16: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:55685 -> 192.168.1.101:5001.
c : SW'unknown':Mux#14: deleting (9 remain)
c : SW#8:10.0.1.4:53863: deleting (8 remain)
c : SW#12:10.0.1.4:55136: deleting (7 remain)
c : SW'unknown':Mux#16: deleting (6 remain)
c : SW'unknown':Mux#17: deleting (5 remain)
c : SW#13:10.0.1.4:55685: deleting (4 remain)
 s: SW'unknown':Mux#17: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:56497 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
c : Accept TCP: 10.0.1.4:57099 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#18: deleting (5 remain)
 s: SW#4:192.168.1.101:5001: deleting (4 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW'unknown':Mux#19: deleting (3 remain)
 s: SW#6:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:57659 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#20: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:58486 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#21: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW'unknown':Mux#18: deleting (11 remain)
c : SW#8:10.0.1.4:56497: deleting (10 remain)
c : SW#12:10.0.1.4:57099: deleting (9 remain)
c : SW'unknown':Mux#19: deleting (8 remain)
c : SW#-1:10.0.1.4:57659: deleting (7 remain)
c : SW'unknown':Mux#20: deleting (6 remain)
c : SW'unknown':Mux#21: deleting (5 remain)
c : SW#14:10.0.1.4:58486: deleting (4 remain)
c : Accept TCP: 10.0.1.4:59031 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#22: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:59539 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#23: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:60281 -> 192.168.1.101:5001.
c : SW#13:10.0.1.4:60281: deleting (9 remain)
c : SW'unknown':Mux#24: deleting (8 remain)
 s: SW'unknown':Mux#24: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:60809 -> 192.168.1.101:5001.
 s: SW#-1:192.168.1.101:5001: deleting (3 remain)
 s: SW'unknown':Mux#25: deleting (2 remain)
c : SW#13:10.0.1.4:60809: deleting (9 remain)
c : SW'unknown':Mux#25: deleting (8 remain)
c : Accept TCP: 10.0.1.4:61319 -> 192.168.1.101:5001.
c : SW'unknown':Mux#22: deleting (9 remain)
c : SW#8:10.0.1.4:59031: deleting (8 remain)
c : SW'unknown':Mux#23: deleting (7 remain)
c : SW#12:10.0.1.4:59539: deleting (6 remain)
c : SW#13:10.0.1.4:61319: deleting (5 remain)
c : SW'unknown':Mux#26: deleting (4 remain)
c : Accept TCP: 10.0.1.4:62103 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : Accept TCP: 10.0.1.4:62603 -> 192.168.1.101:5001.
 s: SW#7:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 28 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 28 got cmd=TCP_EOF len=0
 s: SW'unknown':Mux#26: deleting (7 remain)
 s: SW#4:192.168.1.101:5001: deleting (6 remain)
 s: SW'unknown':Mux#27: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW'unknown':Mux#28: deleting (3 remain)
 s: SW#7:192.168.1.101:5001: deleting (2 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#12:10.0.1.4:62603: deleting (7 remain)
c : SW'unknown':Mux#28: deleting (6 remain)
c : Accept TCP: 10.0.1.4:63088 -> 192.168.1.101:5001.
c : SW#12:10.0.1.4:63088: deleting (7 remain)
c : SW'unknown':Mux#29: deleting (6 remain)
 s: SW'unknown':Mux#29: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:63876 -> 192.168.1.101:5001.
 s: SW#4:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#30: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW'unknown':Mux#27: deleting (7 remain)
c : SW#8:10.0.1.4:62103: deleting (6 remain)
c : SW'unknown':Mux#30: deleting (5 remain)
c : SW#12:10.0.1.4:63876: deleting (4 remain)
c : Accept TCP: 10.0.1.4:64382 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#31: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
 s: SW#4:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:65177 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#32: deleting (3 remain)
 s: SW#4:192.168.1.101:5001: deleting (2 remain)
c : Accept TCP: 10.0.1.4:49401 -> 192.168.1.101:5001.
c : SW#13:10.0.1.4:49401: deleting (9 remain)
c : SW'unknown':Mux#33: deleting (8 remain)
c : Accept TCP: 10.0.1.4:49968 -> 192.168.1.101:5001.
c : SW#13:10.0.1.4:49968: deleting (9 remain)
c : SW'unknown':Mux#34: deleting (8 remain)
c : SW'unknown':Mux#31: deleting (7 remain)
c : SW#8:10.0.1.4:64382: deleting (6 remain)
c : SW#12:10.0.1.4:65177: deleting (5 remain)
c : SW'unknown':Mux#32: deleting (4 remain)
c : Accept TCP: 10.0.1.4:50804 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#35: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
c : SW#8:10.0.1.4:50804: deleting (5 remain)
c : SW'unknown':Mux#35: deleting (4 remain)
c : Accept TCP: 10.0.1.4:51379 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:51379: deleting (5 remain)
c : SW'unknown':Mux#36: deleting (4 remain)
 s: SW'unknown':Mux#36: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:51923 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: deleting (7 remain)
 s: SW'unknown':Mux#34: deleting (6 remain)
 s: SW#7:192.168.1.101:5001: deleting (5 remain)
 s: SW'unknown':Mux#37: deleting (4 remain)
c : Accept TCP: 10.0.1.4:52655 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#38: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:53205 -> 192.168.1.101:5001.
c : SW'unknown':Mux#37: deleting (9 remain)
c : SW#8:10.0.1.4:51923: deleting (8 remain)
c : SW'unknown':Mux#38: deleting (7 remain)
c : SW#12:10.0.1.4:52655: deleting (6 remain)
 s: SW'unknown':Mux#39: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:53724 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#40: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:54525 -> 192.168.1.101:5001.
c : SW#12:10.0.1.4:54525: deleting (9 remain)
c : SW'unknown':Mux#41: deleting (8 remain)
c : Accept TCP: 10.0.1.4:55047 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#41: deleting (7 remain)
 s: SW#6:192.168.1.101:5001: deleting (6 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW'unknown':Mux#42: deleting (5 remain)
 s: SW#7:192.168.1.101:5001: deleting (4 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#12:10.0.1.4:55047: deleting (9 remain)
c : SW'unknown':Mux#42: deleting (8 remain)
c : Accept TCP: 10.0.1.4:55577 -> 192.168.1.101:5001.
 s: SW#-1:192.168.1.101:5001: deleting (5 remain)
 s: SW'unknown':Mux#43: deleting (4 remain)
c : SW#8:10.0.1.4:53724: deleting (9 remain)
c : SW'unknown':Mux#40: deleting (8 remain)
c : SW'unknown':Mux#43: deleting (7 remain)
c : SW#12:10.0.1.4:55577: deleting (6 remain)
c : Accept TCP: 10.0.1.4:56359 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: warning: closed channel 44 got cmd=TCP_EOF len=0
c : warning: closed channel 44 got cmd=TCP_STOP_SENDING len=0
c : SW#8:10.0.1.4:56359: deleting (7 remain)
c : SW'unknown':Mux#44: deleting (6 remain)
 s: SW'unknown':Mux#44: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:56866 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#45: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:57630 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 46 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 46 got cmd=TCP_EOF len=0
 s: SW'unknown':Mux#46: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#12:10.0.1.4:57630: deleting (9 remain)
c : SW'unknown':Mux#46: deleting (8 remain)
c : Accept TCP: 10.0.1.4:58220 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#47: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:58796 -> 192.168.1.101:5001.
c : SW'unknown':Mux#45: deleting (11 remain)
c : SW#8:10.0.1.4:56866: deleting (10 remain)
c : SW#12:10.0.1.4:58220: deleting (9 remain)
c : SW'unknown':Mux#47: deleting (8 remain)
 s: SW'unknown':Mux#48: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:59634 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#49: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:60257 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#50: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:60829 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#51: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:61654 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:59634: deleting (15 remain)
c : SW'unknown':Mux#49: deleting (14 remain)
c : SW#12:10.0.1.4:60257: deleting (13 remain)
c : SW'unknown':Mux#50: deleting (12 remain)
c : SW#-1:10.0.1.4:60829: deleting (11 remain)
c : SW'unknown':Mux#51: deleting (10 remain)
c : SW'unknown':Mux#52: deleting (9 remain)
c : SW#16:10.0.1.4:61654: deleting (8 remain)
 s: SW'unknown':Mux#52: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:62204 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:62204: deleting (9 remain)
c : SW'unknown':Mux#53: deleting (8 remain)
c : Accept TCP: 10.0.1.4:62713 -> 192.168.1.101:5001.
 s: SW#7:192.168.1.101:5001: uwrite: got EPIPE
c : SW#8:10.0.1.4:62713: deleting (9 remain)
c : SW'unknown':Mux#54: deleting (8 remain)
c : Accept TCP: 10.0.1.4:63518 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#55: deleting (9 remain)
 s: SW#8:192.168.1.101:5001: deleting (8 remain)
c : Accept TCP: 10.0.1.4:64079 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#53: deleting (9 remain)
 s: SW#6:192.168.1.101:5001: deleting (8 remain)
 s: SW#7:192.168.1.101:5001: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW'unknown':Mux#54: deleting (6 remain)
 s: SW'unknown':Mux#56: deleting (5 remain)
 s: SW#8:192.168.1.101:5001: deleting (4 remain)
c : SW'unknown':Mux#55: deleting (11 remain)
c : SW#8:10.0.1.4:63518: deleting (10 remain)
c : SW'unknown':Mux#56: deleting (9 remain)
c : SW#12:10.0.1.4:64079: deleting (8 remain)
c : Accept TCP: 10.0.1.4:64610 -> 192.168.1.101:5001.
 s: SW#-1:192.168.1.101:5001: deleting (5 remain)
 s: SW'unknown':Mux#57: deleting (4 remain)
c : Accept TCP: 10.0.1.4:65415 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 58 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 58 got cmd=TCP_EOF len=0
 s: SW'unknown':Mux#58: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:49547 -> 192.168.1.101:5001.
c : SW#15:10.0.1.4:49547: deleting (13 remain)
c : SW'unknown':Mux#59: deleting (12 remain)
c : Accept TCP: 10.0.1.4:50053 -> 192.168.1.101:5001.
 s: SW#7:192.168.1.101:5001: uwrite: got EPIPE
c : Accept TCP: 10.0.1.4:50891 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:64610: deleting (15 remain)
c : SW'unknown':Mux#57: deleting (14 remain)
c : SW'unknown':Mux#58: deleting (13 remain)
c : SW#12:10.0.1.4:65415: deleting (12 remain)
c : SW#15:10.0.1.4:50053: deleting (11 remain)
c : SW'unknown':Mux#60: deleting (10 remain)
 s: SW'unknown':Mux#59: deleting (9 remain)
 s: SW#6:192.168.1.101:5001: deleting (8 remain)
 s: SW'unknown':Mux#60: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#16:10.0.1.4:50891: deleting (9 remain)
c : SW'unknown':Mux#61: deleting (8 remain)
 s: SW'unknown':Mux#61: deleting (5 remain)
 s: SW#8:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:51453 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#62: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:52311 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#63: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:52965 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : Accept TCP: 10.0.1.4:53560 -> 192.168.1.101:5001.
c : SW#8:10.0.1.4:51453: deleting (15 remain)
c : SW'unknown':Mux#62: deleting (14 remain)
c : SW'unknown':Mux#63: deleting (13 remain)
c : SW#12:10.0.1.4:52311: deleting (12 remain)
c : SW'unknown':Mux#64: deleting (11 remain)
c : SW#15:10.0.1.4:52965: deleting (10 remain)
c : SW'unknown':Mux#65: deleting (9 remain)
c : SW#16:10.0.1.4:53560: deleting (8 remain)
 s: SW'unknown':Mux#65: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW#6:192.168.1.101:5001: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
 s: SW'unknown':Mux#64: deleting (4 remain)
c : Accept TCP: 10.0.1.4:54392 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#66: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:55013 -> 192.168.1.101:5001.
c : Accept TCP: 10.0.1.4:55547 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#68: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
c : Accept TCP: 10.0.1.4:56321 -> 192.168.1.101:5001.
c : SW#16:10.0.1.4:56321: deleting (15 remain)
c : SW'unknown':Mux#69: deleting (14 remain)
 s: SW'unknown':Mux#69: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
c : SW'unknown':Mux#66: deleting (13 remain)
c : SW#8:10.0.1.4:54392: deleting (12 remain)
c : SW#12:10.0.1.4:55013: deleting (11 remain)
c : SW'unknown':Mux#67: deleting (10 remain)
c : SW'unknown':Mux#68: deleting (9 remain)
c : SW#15:10.0.1.4:55547: deleting (8 remain)
c : Accept TCP: 10.0.1.4:56901 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#67: deleting (7 remain)
 s: SW#6:192.168.1.101:5001: deleting (6 remain)
 s: SW'unknown':Mux#70: deleting (5 remain)
 s: SW#7:192.168.1.101:5001: deleting (4 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:57455 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#71: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:58285 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#72: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:58814 -> 192.168.1.101:5001.
c : Accept TCP: 10.0.1.4:59346 -> 192.168.1.101:5001.
c : SW'unknown':Mux#70: deleting (17 remain)
c : SW#8:10.0.1.4:56901: deleting (16 remain)
c : SW'unknown':Mux#71: deleting (15 remain)
c : SW#12:10.0.1.4:57455: deleting (14 remain)
c : SW#15:10.0.1.4:58285: deleting (13 remain)
c : SW'unknown':Mux#72: deleting (12 remain)
c : SW'unknown':Mux#73: deleting (11 remain)
c : SW#16:10.0.1.4:58814: deleting (10 remain)
 s: SW#7:192.168.1.101:5001: uwrite: got EPIPE
c : SW#17:10.0.1.4:59346: deleting (9 remain)
c : SW'unknown':Mux#74: deleting (8 remain)
 s: SW'unknown':Mux#74: deleting (7 remain)
 s: SW#7:192.168.1.101:5001: deleting (6 remain)
 s: SW#7:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:60158 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#73: deleting (7 remain)
 s: SW#6:192.168.1.101:5001: deleting (6 remain)
 s: SW'unknown':Mux#75: deleting (5 remain)
 s: SW#7:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:60698 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 76 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 76 got cmd=TCP_EOF len=0
c : SW#12:10.0.1.4:60698: deleting (11 remain)
c : SW'unknown':Mux#76: deleting (10 remain)
 s: SW'unknown':Mux#76: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:61532 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
c : warning: closed channel 77 got cmd=TCP_STOP_SENDING len=0
 s: warning: closed channel 77 got cmd=TCP_EOF len=0
c : SW#12:10.0.1.4:61532: deleting (11 remain)
c : SW'unknown':Mux#77: deleting (10 remain)
 s: SW'unknown':Mux#77: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:62167 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#78: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW'unknown':Mux#75: deleting (11 remain)
c : SW#8:10.0.1.4:60158: deleting (10 remain)
c : SW'unknown':Mux#78: deleting (9 remain)
c : SW#12:10.0.1.4:62167: deleting (8 remain)
c : Accept TCP: 10.0.1.4:62772 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#79: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:63654 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#80: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:64261 -> 192.168.1.101:5001.
 s: SW#6:192.168.1.101:5001: uwrite: got EPIPE
 s: SW'unknown':Mux#81: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:64874 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#82: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : SW#8:10.0.1.4:62772: deleting (15 remain)
c : SW'unknown':Mux#79: deleting (14 remain)
c : SW'unknown':Mux#80: deleting (13 remain)
c : SW#12:10.0.1.4:63654: deleting (12 remain)
c : SW#15:10.0.1.4:64261: deleting (11 remain)
c : SW'unknown':Mux#81: deleting (10 remain)
c : SW'unknown':Mux#82: deleting (9 remain)
c : SW#16:10.0.1.4:64874: deleting (8 remain)
c : Accept TCP: 10.0.1.4:49261 -> 192.168.1.101:5001.
 s: SW'unknown':Mux#83: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
c : Accept TCP: 10.0.1.4:49837 -> 192.168.1.101:5001.
c : SW#12:10.0.1.4:49837: deleting (11 remain)
c : SW'unknown':Mux#84: deleting (10 remain)
 s: SW'unknown':Mux#84: deleting (5 remain)
 s: SW#6:192.168.1.101:5001: deleting (4 remain)
 s: SW#6:192.168.1.101:5001: error was: nowrite: [Errno 107] Transport endpoint is not connected
c : Accept TCP: 10.0.1.4:50404 -> 192.168.1.101:5001.
c : SW#12:10.0.1.4:50404: deleting (11 remain)
c : SW'unknown':Mux#85: deleting (10 remain)
c : SW'unknown':Mux#83: deleting (9 remain)
c : SW#8:10.0.1.4:49261: deleting (8 remain)
 s: SW#6:192.168.1.101:5001: deleting (5 remain)
 s: SW'unknown':Mux#85: deleting (4 remain)
Read from remote host mail.superswivels.com: Operation timed out
client_loop: send disconnect: Broken pipe
fw: undoing changes.
fw: >> pfctl -a sshuttle6-12300 -F all
fw: >> pfctl -X 12182246570510319983
fw: >> pfctl -a sshuttle-12300 -F all
fw: >> pfctl -X 12182246570510307695
c : fatal: ssh connection to server (pid 79231) exited with returncode 255
c : SW'unknown':Mux#3: deleting (7 remain)
c : SW#-1:10.0.1.4:57876: deleting (6 remain)
c : SW#-1:10.0.1.4:57876: error was: uread: [Errno 54] Connection reset by peer
c : SW'unknown':Mux#4: deleting (5 remain)
c : SW#11:10.0.1.4:61825: deleting (4 remain)
c : SW'unknown':Mux#39: deleting (3 remain)
c : SW#13:10.0.1.4:53205: deleting (2 remain)
c : SW#14:10.0.1.4:58796: deleting (1 remain)
c : SW'unknown':Mux#48: deleting (0 remain)
