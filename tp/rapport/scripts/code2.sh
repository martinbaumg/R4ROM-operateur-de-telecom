interface Tunnel0
 ip unnumbered Loopback0
 tunnel mode mpls traffic-eng
 tunnel destination 3.3.3.3
 tunnel mpls traffic-eng autoroute announce
 tunnel mpls traffic-eng priority 1 1
 tunnel mpls traffic-eng bandwidth 9000
 tunnel mpls traffic-eng path-option 1 dynamic
 tunnel mpls traffic-eng path-option 2 explicit name PE1versPE2
 no routing dynamic
!