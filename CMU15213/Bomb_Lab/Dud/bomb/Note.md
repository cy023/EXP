# Bomb Lab Note

### phase 1
    學會用 print (char *) *0xxxxxxxxxx

### phase 2
    read_six_number 學到如何觀察 sscanf 格式
    後面兩倍關係用猜的，結果竟然進入下一階段

### phase 3
    猜測是 `switch case` 的判斷式，但還不清楚為何略過 `case 1`

    0 0xcf  (207)
    1   
    2 0x2c3 (707)
    3 0x100 (256)
    4 0x185 (389)
    5 0xce  (206)
    6 0x2aa (682)
    7 0x147 (327)

### phase 4
    猜中...
    - 0 0
    - 1 0
    - 3 0
    - 7 0
