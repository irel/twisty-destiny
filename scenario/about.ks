@title name="雾之本境"
;@rclick enabled=false
;@clickskip enabled=false
@position left=0 top=0 width=420 height=200 color=0xffffff opacity=255 marginl=0 margint=0 marginr=0 marginb=0 frame="guanyu"
@style align=center
@font size=25 shadow=false color=0
@wait time=200
@nowait
@backlay
@current page=back
[style align=center]
[mappfont storage="font.tft"]
[font size=40]
@locate y=30

@locate y=70
@font size=22 shadow=false color=0
;SPtime制作
@locate y=130 x=80
[button exp="System.shellExecute('http://blog.sina.com.cn/sptime')" normal="guanyuanjian"]
@trans method=crossfade time=500
@wt
@wait time=10000
@font size=default
*exit
@close