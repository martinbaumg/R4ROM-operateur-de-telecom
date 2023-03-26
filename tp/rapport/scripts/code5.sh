PE1#show mpls traffic-eng tunnels 

Name: PE1_t1                              (Tunnel1) Destination: 3.3.3.3
  Status:
    Admin: up         Oper: up     Path: valid       Signalling: connected
    path option 1, type dynamic (Basis for Setup, path weight 20)

  Config Parameters:
    Bandwidth: 7000     kbps (Global)  Priority: 1  1   Affinity: 0x0/0xFFFF
    Metric Type: TE (default)
    AutoRoute:  enabled   LockDown: disabled  Loadshare: 7000     bw-based
    auto-bw: disabled
  Active Path Option Parameters:
    State: dynamic path option 1 is active
    BandwidthOverride: disabled  LockDown: disabled  Verbatim: disabled


  InLabel  :  - 
  OutLabel : Ethernet0/0, 17
  RSVP Signalling Info:
       Src 1.1.1.1, Dst 3.3.3.3, Tun_Id 1, Tun_Instance 13
    RSVP Path Info:
      My Address: 10.10.10.1   
      Explicit Route: 10.10.10.2 10.10.20.2 10.10.20.1 3.3.3.3 
      Record   Route:   NONE
      Tspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits
    RSVP Resv Info:
      Record   Route:   NONE
      Fspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits
  History:
 Tunnel:
      Time since created: 3 minutes, 53 seconds
      Time since path change: 3 minutes, 7 seconds
      Number of LSP IDs (Tun_Instances) used: 13
    Current LSP:
      Uptime: 3 minutes, 7 seconds

LSP Tunnel PE2_t1 is signalled, connection is up
  InLabel  : Ethernet0/0, implicit-null
  OutLabel :  - 
  RSVP Signalling Info:
       Src 3.3.3.3, Dst 1.1.1.1, Tun_Id 1, Tun_Instance 12
    RSVP Path Info:
      My Address: 1.1.1.1   
      Explicit Route:  NONE
      Record   Route:   NONE
      Tspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits
    RSVP Resv Info:
      Record   Route:   NONE
      Fspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits