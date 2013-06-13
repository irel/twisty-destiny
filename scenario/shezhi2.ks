*shezhi
[locklink]
[rclick enabled="true" jump="true" storage="shezhi2.ks" target=*return]
[backlay]

*shezhi2
[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="shezhi.jpg"]
[current layer=message3 page=back][er][nowait]
[locate x=626 y=140]
[slider value="kag.bgmvolume" base=gunzhou width=330 height=33 normal=hualun ]
[locate x=626 y=220]
[slider value="kag.sevolume" base=gunzhou width=350 height=33 normal=hualun ]
[locate x=626 y=300]
[slider value="kag.textspeed" base=gunzhou width=330 height=33 normal=hualun max=10 min=0]
[locate x=10 y=540]
;[button normal=title01  target=*确认返回  over="title" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]
[locate x=560 y=365]
[button normal=windows1.png  target=*窗口  over="windows2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3 ]
[locate x=748 y=360]
[button normal=fullscreen1.png  target=*全屏  over="fullscreen2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  ]
[locate x=572 y=465]
[button normal=yidutiaoguo1.png   over="yidutiaoguo1.png"  entersebuf=3 clicksebuf=3    cond="kag.allskip==false"]
[button normal=yidutiaoguo2.png target=*已读   over="yidutiaoguo2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3    cond="kag.allskip==true"]
[locate x=760 y=460]
[button normal=quanbutiaoguo1.png  over="quanbutiaoguo1.png"  entersebuf=3 clicksebuf=3  cond="kag.allskip==true"]
[button normal=quanbutiaoguo2.png  target=*全部  over="quanbutiaoguo2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  cond="kag.allskip==false"]
[locate x=830 y=579]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="shezhi2.ks"]
[trans method="crossfade" time=200  over="读取1" enterse="yidong" clickse="dianji"]
[wt]
[s]



*全屏
[eval exp="kag.onFullScreenMenuItemClick(kag)"]
[unlocklink]
[s]
*窗口
[eval exp="kag.onWindowedMenuItemClick(kag)"]
[unlocklink]
[s]

*已读
[iscript]
  kag.allskip=false;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi2.ks"]
[s]

*全部
[iscript]
  kag.allskip=true;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi2.ks"]
[s]


*return
[backlay]
[layopt layer="message3" visible="false" page="back"]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[rclick enabled="false"]
[unlocklink]
