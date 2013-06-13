*youjian1
;禁止历史记录
[history output="false"]
[backlay]
[rclick enabled="true" jump="true" storage="youjian.ks" target=*youjian2]
[backlay]
[layopt layer="message1" visible="false" page="back"]
[layopt layer="message2" visible="false" page="back"]
[stoptrans]
[trans method=crossfade time=200][wt]
[eval exp="kag.leftClickHook.add(onLeftClick)"]
[s]


*youjian2
;禁止历史记录
[history output="true"]

[backlay]
[layopt layer="message1" visible="true" page="back"]
[layopt layer="message2" visible="true" page="back"]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
[stoptrans]
[trans method=crossfade time=300][wt]
[eval exp="kag.leftClickHook.remove(onLeftClick)"]
[return]


