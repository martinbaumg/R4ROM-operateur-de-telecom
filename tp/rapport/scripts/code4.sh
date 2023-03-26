Gateway of last resort is not set

      1.0.0.0/32 is subnetted, 1 subnets
C        1.1.1.1 is directly connected, Loopback0
      2.0.0.0/32 is subnetted, 1 subnets
O        2.2.2.2 [110/11] via 10.10.10.2, 00:01:14, Ethernet0/0
      3.0.0.0/32 is subnetted, 1 subnets
O        3.3.3.3 [110/21] via 3.3.3.3, 00:01:04, Tunnel1
      4.0.0.0/32 is subnetted, 1 subnets
O        4.4.4.4 [110/11] via 10.10.30.2, 00:01:14, Ethernet0/1
      5.0.0.0/32 is subnetted, 1 subnets
O        5.5.5.5 [110/21] via 10.10.30.2, 00:01:04, Ethernet0/1
      10.0.0.0/8 is variably subnetted, 7 subnets, 2 masks
C        10.10.10.0/30 is directly connected, Ethernet0/0
L        10.10.10.1/32 is directly connected, Ethernet0/0
O        10.10.20.0/30 [110/20] via 10.10.10.2, 00:01:04, Ethernet0/0
C        10.10.30.0/30 is directly connected, Ethernet0/1
L        10.10.30.1/32 is directly connected, Ethernet0/1
O        10.10.40.0/30 [110/20] via 10.10.30.2, 00:01:04, Ethernet0/1
O        10.10.50.0/30 [110/30] via 10.10.30.2, 00:01:04, Ethernet0/1
                       [110/30] via 3.3.3.3, 00:01:04, Tunnel1
      172.16.0.0/24 is subnetted, 1 subnets
S        172.16.20.0 is directly connected, Tunnel1