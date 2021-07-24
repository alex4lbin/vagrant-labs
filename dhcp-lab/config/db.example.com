$ORIGIN example.com.
$TTL    1w
@       IN      SOA     ns1.example.com. hostmaster.example.com. (
                        1       ; Serial
                        1w      ; Refresh
                        1d      ; Retry
                        28d     ; Expire
                        1w)     ; Negative Cache TTL

; name servers - NS records
        IN      NS      ns1.example.com.

; name servers - A records
ns1     IN      A       192.168.220.11

; 192.168.220.0/24 - A records

dfg     IN      A       192.168.220.5
dhcp1   IN      A       192.168.220.10
