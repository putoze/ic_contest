# 2021_grad_cell_B

題目本身不難理解，相較大學部的，需要多使用開根號的designware。<br>

我自己是focus在low area的部分，所以我總共只用了一顆sqrt的電路。並且也有共用乘法器及外積的電路。
我喜歡把運算器都放在電路的前端，以方便自己看到底使用了多少的運算器。<br>

這個LAB也需要考慮精度的問題，所以我把變數參數化，以方便自己調整需要多少bit的精度。<br>

最後的建議，這個題目的clock cycle給很大，基本不用怕timing的問題，把function作對就好。



### 參考資料

https://github.com/derek8955/ic_contest/blob/main/2021_geo/geofence.v 