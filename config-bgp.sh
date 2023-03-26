<--- AS 111 - PETITS ROUTERS --->

router bgp 111
bgp log-neighbor-changes
neighbor 1.1.1.1 remote-as 111
neighbor 1.1.1.1 update-source Loopback0
 
address-family ipv4
neighbor 1.1.1.1 activate
neighbor 1.1.1.1 send-community extended
neighbor 1.1.1.1 next-hop-self



<--- config pour le R1 --->

router bgp 111
bgp log-neighbor-changes
neighbor AS111 peer-group
neighbor AS111 ebgp-multihop 2
neighbor 2.2.2.2 remote-as 111
neighbor 2.2.2.2 peer-group AS111
neighbor 2.2.2.2 update-source Loopback0
neighbor 3.3.3.3 remote-as 111
neighbor 3.3.3.3 peer-group AS111
neighbor 3.3.3.3 update-source Loopback0
neighbor 4.4.4.4 remote-as 111
neighbor 4.4.4.4 peer-group AS111
neighbor 4.4.4.4 update-source Loopback0
neighbor 5.5.5.5 remote-as 111
neighbor 5.5.5.5 peer-group AS111
neighbor 5.5.5.5 update-source Loopback0
neighbor 6.6.6.6 remote-as 111
neighbor 6.6.6.6 peer-group AS111
neighbor 6.6.6.6 update-source Loopback0
neighbor 7.7.7.7 remote-as 333
neighbor 7.7.7.7 ebgp-multihop 2
neighbor 7.7.7.7 update-source Loopback0

address-family ipv4
neighbor AS111 send-community extended
neighbor AS111 route-reflector-client
neighbor AS111 next-hop-self
neighbor 2.2.2.2 activate
neighbor 3.3.3.3 activate
neighbor 4.4.4.4 activate
neighbor 5.5.5.5 activate
neighbor 6.6.6.6 activate
neighbor 7.7.7.7 activate
neighbor 7.7.7.7 send-community extended
neighbor 7.7.7.7 next-hop-self

<--- config pour le R7 --->

router bgp 333
bgp log-neighbor-changes
neighbor AS333 peer-group
neighbor AS333 ebgp-multihop 2
neighbor 1.1.1.1 remote-as 111
neighbor 1.1.1.1 ebgp-multihop 2
neighbor 1.1.1.1 update-source Loopback0
neighbor 8.8.8.8 remote-as 333
neighbor 8.8.8.8 peer-group AS333
neighbor 8.8.8.8 update-source Loopback0
neighbor 9.9.9.9 remote-as 333
neighbor 9.9.9.9 peer-group AS333
neighbor 9.9.9.9 update-source Loopback0

address-family ipv4
neighbor AS333 route-reflector-client
neighbor AS333 next-hop-self
neighbor 1.1.1.1 activate
neighbor 1.1.1.1 send-community extended
neighbor 1.1.1.1 next-hop-self
neighbor 8.8.8.8 activate
neighbor 9.9.9.9 activate

<--- config pour les routers de AS333 --->

router bgp 333
bgp log-neighbor-changes
neighbor 7.7.7.7 remote-as 333
neighbor 7.7.7.7 update-source Loopback0

address-family ipv4
neighbor 7.7.7.7 activate
neighbor 7.7.7.7 send-community extended
neighbor 7.7.7.7 next-hop-self

<--- config pour le R12 --->

router bgp 444
bgp log-neighbor-changes
neighbor 4.4.4.4 remote-as 111
neighbor 4.4.4.4 ebgp-multihop 2
neighbor 4.4.4.4 update-source Loopback0
neighbor 9.9.9.9 remote-as 333
neighbor 9.9.9.9 ebgp-multihop 2
neighbor 9.9.9.9 update-source Loopback0

address-family ipv4
neighbor 4.4.4.4 activate
neighbor 4.4.4.4 send-community extended
neighbor 4.4.4.4 next-hop-self
neighbor 9.9.9.9 activate
neighbor 9.9.9.9 send-community extended
neighbor 9.9.9.9 next-hop-self


<--- config pour le R10 --->

router bgp 222
bgp log-neighbor-changes
neighbor 5.5.5.5 remote-as 111
neighbor 5.5.5.5 ebgp-multihop 2
neighbor 5.5.5.5 update-source Loopback0
neighbor 8.8.8.8 remote-as 333
neighbor 8.8.8.8 ebgp-multihop 2
neighbor 8.8.8.8 update-source Loopback0

address-family ipv4
neighbor 5.5.5.5 activate
neighbor 5.5.5.5 send-community extended
neighbor 5.5.5.5 next-hop-self
neighbor 8.8.8.8 activate
neighbor 8.8.8.8 send-community extended
neighbor 8.8.8.8 next-hop-self



neighbor 10.10.10.10 remote-as 222
neighbor 10.10.10.10 ebgp-multihop 2
neighbor 10.10.10.10 update-source Loopback0
address-family ipv4
neighbor 10.10.10.10 activate
neighbor 10.10.10.10 send-community extended
neighbor 10.10.10.10 next-hop-self


neighbor 12.12.12.12 remote-as 444
neighbor 12.12.12.12 ebgp-multihop 2
neighbor 12.12.12.12 update-source Loopback0
address-family ipv4
neighbor 12.12.12.12 activate
neighbor 12.12.12.12 send-community extended
neighbor 12.12.12.12 next-hop-self



<--- route statique pour R10 --->

ip route 5.5.5.5 255.255.255.252 ethernet0/0
ip route 8.8.8.8 255.255.255.252 ethernet0/1
ip route 172.16.10.0 255.255.255.0 ethernet0/2

<--- route statiques pour R12 --->

ip route 4.4.4.4 255.255.255.252 ethernet0/0
ip route 9.9.9.9 255.255.255.252 ethernet0/1
ip route 172.16.20.0 255.255.255.0 ethernet0/2

