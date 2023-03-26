PE1#show mpls forwarding-table 
Local      Outgoing   Prefix           Bytes Label   Outgoing   Next Hop    
Label      Label      or Tunnel Id     Switched      interface              
16    [T]  Pop Label  172.16.20.0/24   0             Tu1        point2point 
17         Pop Label  4.4.4.4/32       0             Et0/1      10.10.30.2  
18         Pop Label  2.2.2.2/32       0             Et0/0      10.10.10.2  
19         Pop Label  10.10.40.0/30    0             Et0/1      10.10.30.2  
20         Pop Label  10.10.20.0/30    0             Et0/0      10.10.10.2  
21         20         5.5.5.5/32       0             Et0/1      10.10.30.2  
22    [T]  Pop Label  3.3.3.3/32       0             Tu1        point2point 
23         22         10.10.50.0/30    0             Et0/1      10.10.30.2  
      [T]  No Label   10.10.50.0/30    0             Tu1        point2point 