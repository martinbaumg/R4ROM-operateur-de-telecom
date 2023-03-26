- P1
LSP Tunnel PE1_t0 is signalled, connection is up
  InLabel  : Ethernet0/0, 23
  OutLabel : Ethernet0/1, implicit-null
  RSVP Signalling Info:
       Src 1.1.1.1, Dst 3.3.3.3, Tun_Id 0, Tun_Instance 15
    RSVP Path Info:
      My Address: 10.10.20.2   
      Explicit Route: 10.10.20.1 3.3.3.3 
      Record   Route:   NONE
      Tspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits
    RSVP Resv Info:
      Record   Route:   NONE
      Fspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits

- PE2
LSP Tunnel PE1_t0 is signalled, connection is up
  InLabel  : Ethernet0/0, implicit-null
  OutLabel :  - 
  RSVP Signalling Info:
       Src 1.1.1.1, Dst 3.3.3.3, Tun_Id 0, Tun_Instance 15
    RSVP Path Info:
      My Address: 3.3.3.3   
      Explicit Route:  NONE
      Record   Route:   NONE
      Tspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits
    RSVP Resv Info:
      Record   Route:   NONE
      Fspec: ave rate=7000 kbits, burst=1000 bytes, peak rate=7000 kbits