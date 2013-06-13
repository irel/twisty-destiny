*save
;首先固定缩略图用locksnapshot
[locklink]
[rclick enabled="true" jump="true" storage="shiyan.ks" target=*fanhui]
[locksnapshot]
[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="js"] 
[stoptrans]
[trans method=crossfade time=200][wt] 
[s]

*fanhui

[rclick call=true target=*youjian1 enabled=true storage="youjian.ks"]
[history enabled=true output=true]
[backlay]
[layopt layer="message3" visible="false" page="back"]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
;缩略图锁定取消
;这里所有系统(SAVE,LOAD,OPTION)的返回都将返回*return标签，因此锁定取消只要设定一次
;锁定和锁定取消必须是一一对应的，因此如果你设定了多了返回游戏的标签，每个的末尾都要取消锁定
;否则下一次再进入主菜单就会出错
[return]

