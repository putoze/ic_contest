# 2020_grad_cell_B


## 設計方法

為了比較方便，我在string list的最前面有多補一個存.的部分，方便有head的比較，所以總共開了一個 [7:0] string [0:32]的reg <br>

設計上分star跟沒star的

- 沒star的: 有head的從index 0開始比，沒有的從1開始，比到match為止

- 有star的: 分成pre_match跟back_match，pre_match比較star前的部分，back_match比較star後的部分

在比較器的部分，我一次開8組比較器(pattern的max length)，每個比較器除了比是否相等，還會多加是否等於.的case <br>

心得:這個lab不難，但要小心一些corner case，像是*在最前面，或者只有.的情況，有些corner在一開始設計時沒想到，導致debug時，多加了許多flag，整個code的架構看起來就變很亂
