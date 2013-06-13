[loadplugin module=addfont.dll]
@loadplugin module=extrans.dll
@loadplugin module=krflash.dll
@loadplugin module=krmovie.dll
@loadplugin module=layerExImage.dll
@loadplugin module=csvparser.dll
@loadplugin module=wuvorbis.dll


[eval exp="System.addFont('simyou.ttf', true)"]


;0、雾天开始
@macro name=雾天开始
[foginit]
[image page=fore visible=true layer=10 storage="wu.png" index=999890]
@endmacro
;例：[雾天开始]

;0、雾天结束
@macro name=雾天结束
[foguninit]
[image page=fore visible=false layer=10 storage="wu.png" index=999890]
@endmacro
;例：[雾天结束]

;1、显示背景图片渐变
@macro name=显示背景图片渐变
[backlay]
[image page=back visible=true layer=0 storage=%s]
[stoptrans]
[trans method=crossfade time=%t|1000][wt]
@endmacro
;例：[显示背景图片渐变 s="bg1" t="2000"]

;2、显示背景图片和人物滤境渐变
@macro name=显示背景图片和人物滤境渐变
[backlay]
[image page=back visible=true layer=0 storage=%s]
[image page=back visible=true layer=6 storage=%s1 top=%top left=%left opacity=255 index=999950]
[image page=back visible=true layer=7 storage=%s2 top=%top2 left=%left2 opacity=255 index=999960]
[image page=back visible=true layer=8 storage=%s left=%left top=%top opacity=255 index=999970]
[stoptrans]
[trans method=universal vague=%y|1 time=%t|1000 rule=%x][wt canskip="false"]
@endmacro
;例：[显示背景图片和人物滤境渐变 s="bg1" s1="" s2="" left=50 top=300 left2=50 top2=100 t="2000" x="具体的滤境名字"]
;例：[显示背景图片和人物滤境渐变 s="bg1" t="2000" x="具体的滤境名字" y=""]（y可写1~64的数字，代表渐变过程中的模糊程度，可不写y）

;3、显示文字框
@macro name=显示文字框
[backlay]
[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=466 height=640 left=0 width=960 marginl=100 margint=22 marginr=53 marginb=0 frame="duihuakuang.png"]
[current layer=message1 page=fore]
[er]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;例：[显示文字框]或者[显示文字框 t=200]


;4、文字框消失
@macro name=文字框消失
[backlay]
[layopt layer=message2 visible=false page=back]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;例：[文字框消失]或[文字框消失 t=0]


;5、显示立绘1
@macro name=显示立绘1
[backlay]
[image page=back visible=true layer=6 storage=%s left=%left top=%top opacity=255 index=999950]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;例：[显示立绘1 s="test" top=25 left=120 t="300"]

;5.1:显示移动立绘1
@macro name=显示移动立绘1
[image page=fore visible=true layer=6 storage=%s left=%left1 top=%top1 opacity=0  index=999950]
[move layer=6 path=%path time=%t|300][wm]
@endmacro
;例：[显示移动立绘1 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]


;6、显示立绘2
@macro name=显示立绘2
[backlay]
[image page=back visible=true layer=7 storage=%s left=%left top=%top opacity=255  index=999960]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;例：[显示立绘2 s="test" top=50 left=200 t="300"]

;5.1:显示移动立绘2
@macro name=显示移动立绘2
[image page=fore visible=true layer=7 storage=%s left=%left1 top=%top1 opacity=0  index=999960]
[move layer=7 path=%path time=%t|300][wm]
@endmacro
;例：[显示移动立绘2 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]


;7、显示立绘3
@macro name=显示立绘3
[backlay]
[image page=back visible=true layer=8 storage=%s left=%left top=%top opacity=255  index=999970]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;例：[显示立绘3 s="test" top=50 left=300 t="300"]

;5.1:显示移动立绘3
@macro name=显示移动立绘3
[image page=fore visible=true layer=8 storage=%s left=%left1 top=%top1 opacity=0 index=999970]
[move layer=8 path=%path time=%t|300][wm]
@endmacro
;例：[显示移动立绘3 s="qj1" left1=120 top1=25 path="(180,25,255)" t="300"]



;8、立绘1消失
@macro name=立绘1消失
[backlay]
[freeimage layer=6 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;例：[立绘1消失 t="300"]


;8、立绘1移动消失
@macro name=立绘移动1消失
[move layer=6 path=%path time=%t|200][wm]
@endmacro
;例：[立绘移动1消失 path="(100,25,0)" t="300"]

;9、立绘2消失
@macro name=立绘2消失
[backlay]
[freeimage layer=7 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;例：[立绘2消失 t="300"]

;8、立绘2移动消失
@macro name=立绘移动2消失
[move layer=7 path=%path time=%t|200][wm]
@endmacro
;例：[立绘移动2消失 path="(100,25,0)" t="300"]

;10、立绘3消失
@macro name=立绘3消失
[backlay]
[freeimage layer=8 page=back]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;例：[立绘3消失 t="300"]

;8、立绘3移动消失
@macro name=立绘移动3消失
[move layer=8 path=%path time=%t|200][wm]
@endmacro
;例：[立绘移动3消失 path="(100,25,0)" t="300"]


;11、人物立绘和背景和文字框同时出现
@macro name=同时出现
[backlay]
;人物立绘
[image page=back visible=true layer=6 storage=%s1 left=%left1 top=%top1 opacity=255  index=999950]
[image page=back visible=true layer=7 storage=%s2 left=%left2 top=%top2 opacity=255  index=999960]
[image page=back visible=true layer=8 storage=%s3 left=%left3 top=%top3 opacity=255 index=999970]
;背景图片
[image page=back visible=true layer=0 storage=%s]
;文字框
[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=466 left=0 width=200 height=100 marginl=100 margint=22 marginr=53 marginb=0 frame=duihuakuang.png]
[current layer=message1 page=fore]
[stoptrans]
[trans method=crossfade time=%t|100][wt]
[endmacro]
;例：[同时出现 s1="test" s2="" s3="" top1=25 left1=120  top2=25 left2=180 top3=25 left3=100 s="beijingtupian"  t="300"]

;12、人物立绘和背景和文字框同时消失
@macro name=同时消失
[backlay]
;人物立绘
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
;背景图片
[image page=back visible=true layer=0 storage="chunhei"]
;文字框
[layopt layer=message2 visible=false page=back]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|0][wt]
@endmacro
;[同时消失  t="300"]

;15,播放音乐渐变
@macro name=播放音乐渐变
[fadeinbgm storage=%s time=%t]
@endmacro
;[播放音乐渐变 s="start" t="2000"]

;13,关闭音乐渐变
@macro name=关闭音乐渐变
@fadeoutbgm time=%t|1000
@endmacro
;例：[关闭音乐渐变 t="1000"]

;12,播放音效
@macro name=播放音效
[se storage=%s]
[endmacro]
;例：[播放音效 s="win"]

;13,关闭音效
@macro name=关闭音效
[stopse]
[endmacro]
;例：[关闭音效]


;13.4,音效1循环
@macro name=音效1循环
@fadeinse  storage=%s  time=%t loop=true
@endmacro
;例：[音效1循环 s="win" t="1000"]

;13.4,音效1不循环
@macro name=音效1不循环
@fadeinse  storage=%s  time=%t loop=false
@endmacro
;例：[音效1不循环 s="win" t="1000"]

;13.4,音效2循环
@macro name=音效2循环
@fadeinse  storage=%s  buf=2 time=%t loop=true
@endmacro
;例：[音效2循环 s="win" t="1000"]

;13.4,音效2不循环
@macro name=音效2不循环
@fadeinse  storage=%s  buf=2 time=%t loop=false
@endmacro
;例：[音效2不循环 s="win" t="1000"]

;;13,关闭音效1
@macro name=关闭音效1
@fadeoutse time=%t|1000 
@endmacro
;例：[关闭音效1 t="1000"]

;;13,关闭音效2
@macro name=关闭音效2
@fadeoutse time=%t|1000 buf=2
@endmacro
;例：[关闭音效2 t="1000"]

;13,控制文字的
;[l]：等待dianji
;[r]：换行
;[p]：换页

;14, 全屏文字框
@macro name=全屏文字框
[backlay]
[position layer=message2 page=back frame="quanpingwenzikuangdiban.png" top="578" left="330" height="200" weight="200" visible=true opacity=255 ]
[current layer=message2 page=back][er]
[sysbutton name="save" normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=11 y=10  exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="load" normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=95 y=10  exp="kag.callExtraConductor('load.ks', '*load')"  entersebuf=3 clicksebuf=3 ]
[sysbutton name="note"  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji" x=179 y=10 exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3 ]
[sysbutton name="config" normal="config.png" over="config1.png" enterse="yidong" clickse="dianji" x=263 y=10 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="auto" normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji" x=347 y=10 exp="kag.onAutoModeMenuItemClick()"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="skip" normal="skip.png" over="skip1.png" enterse="yidong" clickse="dianji" x=431 y=10 exp="kag.onSkipToNextStopMenuItemClick()"  entersebuf=3  clicksebuf=3 ]
[sysbutton name="log"  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png" enterse="yidong" clickse="dianji" x=515 y=10   entersebuf=3  clicksebuf=3 ]
;[rclick call=true target=*youjianquanping enabled=true storage="openx3.ks"]

[layopt layer=message2 visible=true page=back]
[position layer=message1 page=back visible=true opacity=255 top=0 height=570 left=0 width=760 marginl=60 margint=45 marginr=24 marginb=30 frame=quanpingwenzikuang.png  marginl=150 margint=100 marginr=120]
[current layer=message1 page=fore]
[stoptrans]
[trans method=crossfade time=%t|800][wt]
[er]
@endmacro
;[全屏文字框 t="1000"]或[全屏文字框]

;14全屏文字框结束
@macro name=全屏文字框结束
[layopt layer=message2 visible=false page=back]
[position layer=message2 page=back frame="wenzikuangdiban.png"top=466 height=640 left=822 width=960 visible=false opacity=255]
[current layer=message2 page=back][er]
[sysbutton name=save normal="save.png" over="save1.png" enterse="yidong" clickse="dianji" x=26 y=15     exp="kag.callExtraConductor('save.ks', '*save')"  entersebuf=3  clicksebuf=3]
[sysbutton name=load  normal="load.png" over="load1.png" enterse="yidong" clickse="dianji"  x=26 y=36  exp="kag.callExtraConductor('load.ks', '*load')" entersebuf=3  clicksebuf=3]
[sysbutton name=note  normal="note.png" over="note1.png" enterse="yidong" clickse="dianji"  x=26 y=57 exp="kag.callExtraConductor('note.ks', '*note')" entersebuf=3  clicksebuf=3]
[sysbutton name=config  normal="config.png" over="config1.png" enterse="yidong" clickse="dianji"  x=26 y=78 exp="kag.callExtraConductor('shezhi.ks', '*shezhi')" entersebuf=3  clicksebuf=3]
[sysbutton  name=auto normal="auto.png" over="auto1.png" enterse="yidong" clickse="dianji"  x=26 y=99 exp="kag.onAutoModeMenuItemClick()" entersebuf=3  clicksebuf=3]
[sysbutton name=skip  normal="skip.png" over="skip1.png"  enterse="yidong" clickse="dianji"  x=26 y=120 exp="kag.onSkipToNextStopMenuItemClick()" entersebuf=3  clicksebuf=3]
[sysbutton name=log  exp="kag.onShowHistoryMenuItemClick()" normal="log.png" over="log1.png"  enterse="yidong" clickse="dianji" x=26 y=141  entersebuf=3  clicksebuf=3]
[position layer=message1 frame="" page=back opacity=0]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
;[rclick call=true target=*youjian1 enabled=true storage="openx3.ks"]
@endmacro
;例：[全屏文字框结束 t=1000]



;14, 全屏文字框2
@macro name=全屏文字框2
[rclick enabled=false]
[backlay]
[layopt layer=message2 visible=false page=back]
[position layer=message1 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=80 margint=555 marginr=53 marginb=0 frame="duihuakuang2.png"]
[current layer=message1 page=fore]
[er]
[stoptrans]
[trans method=crossfade time=%t|200][wt]
@endmacro
;[全屏文字框2 t="1000"]或[全屏文字框2]

;14全屏文字框结束2
@macro name=全屏文字框结束2
[rclick enabled=true]
[stoptrans]
[trans method=crossfade time=%t|800][wt]
@endmacro
;例：[全屏文字框结束2 t=300]


;15,背景震动
@macro name=背景震动
[quake time=%t|1000]
[wq canskip="false"]
@endmacro
;[背景震动 t="1000"]或[背景震动]

;15,人物震动
;方法解释（x,y,z）,z不用改，只需要注意x,y的坐标就可以，这个不作为方法使用，内容制作时候，直接复制下面的代码进行相应修改就可以。
;[move time=100 path="(100,100,255) (100,160,255) (100,100,255) (100,160,255)" layer=1]

;----------------------------------场景效果-------------------------------------------------------------
@macro name=卷动效果
[backlay]
[image layer=0 page="back" storage=%s visible=true]
[stoptrans]
[trans method="scroll" time=%t from="left"]
[wt canskip="false"]
@endmacro
;例：[卷动效果 s="**" t="1000"]

@macro name=背景滤镜渐变
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method="universal" time=%t rule=%r]
[wt canskip="false"]
@endmacro
;例：[背景滤镜渐变 s="**" t="1000" r="**"]

@macro name=水波效果
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=ripple time=%t]
[wt canskip="false"]
@endmacro
;例：[水波效果 s="**" t="1000"]

@macro name=翻页效果一
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotateswap time=%t]
[wt canskip="false"]
@endmacro
;例：[翻页效果一 s="**" t="1000"]

@macro name=翻页效果二
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=turn time=%t]
[wt canskip="false"]
@endmacro
;例：[翻页效果二 s="**" t="1000"]

@macro name=翻页效果三
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotatevanish time=%t]
[wt canskip="false"]
@endmacro
;例：[翻页效果三 s="**" t="1000"]

@macro name=波型效果
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=wave time=%t]
[wt canskip="false"]
@endmacro
;例：[波型效果 s="**" t="1000"]

@macro name=马赛克效果
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=mosaic time=%t]
[wt canskip="false"]
@endmacro
;例：[马赛克效果 s="**" t="1000"]

@macro name=缩放效果
[backlay]
[image layer=0 page="back" storage=%s visible="true"]
[stoptrans]
[trans method=rotatezoom time=%t]
[wt canskip="false"]
@endmacro
;例：[缩放效果 s="**" t="1000"]

@macro name=旧电影开始
[image layer=stage page="fore" storage=%s visible="true" mcolor="0x000000" mopacity=128]
[oldMovieinit]
@endmacro
;例：[旧电影开始 s="**"]

@macro name=旧电影结束
[oldMovieuninit]
@endmacro
;例：[旧电影结束]
;----------------------------------场景效果结束-------------------------------------------------------------



;16,
[macro name=档案显示]
[nowait]
;改变字体/其实就这么简单，这里采用了两种字体(中文和英文显示所用的字体不同，因此经常需要切换)
[font color=0x000000 shadow="false" size=22 bold=true]

;File No.1
[locate x=85 y=95]
;onenter(鼠标选中该档案)，onleave(鼠标离开该档案)时所执行的函数就在上面的iscript部分，注意到了吗？
[link exp="tf.存档编号=0" target=%target onenter="showsnap(0)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
;显示文字"File No.1 "，并通过emb指令显示取得的"档案时间"
;[mappfont storage="font.tft"]
[ch text="      " cond="kag.getBookMarkDate(0)!=''"]
[emb exp="kag.getBookMarkDate(0)"]
[ch text="      " cond="kag.getBookMarkDate(0)!=''"]
;当档案不存在时显示的替代文字"----/--/-- --:--"
[ch text="           No Data             " cond="kag.getBookMarkDate(0)==''"]
[endlink]

[locate x=85 y=136]
[link exp="tf.存档编号=1" target=%target onenter="showsnap(1)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(1)!=''"][emb exp="kag.getBookMarkDate(1)"]
[ch text="      " cond="kag.getBookMarkDate(1)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(1)==''"]
[endlink]


[locate x=85 y=180]
[link exp="tf.存档编号=2" target=%target onenter="showsnap(2)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(2)!=''"]
[emb exp="kag.getBookMarkDate(2)"]
[ch text="      " cond="kag.getBookMarkDate(2)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(2)==''"]
[endlink]

[locate x=85 y=225]
[link exp="tf.存档编号=3" target=%target onenter="showsnap(3)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(3)!=''"]
[emb exp="kag.getBookMarkDate(3)"]
[ch text="      " cond="kag.getBookMarkDate(3)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(3)==''"]
[endlink]


[locate x=85 y=270]
[link exp="tf.存档编号=4" target=%target onenter="showsnap(4)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(4)!=''"]
[emb exp="kag.getBookMarkDate(4)"]
[ch text="      " cond="kag.getBookMarkDate(4)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(4)==''"]
[endlink]


[locate x=85 y=315]
[link exp="tf.存档编号=5" target=%target onenter="showsnap(5)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(5)!=''"]
[emb exp="kag.getBookMarkDate(5)"]
[ch text="      " cond="kag.getBookMarkDate(5)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(5)==''"]
[endlink]

[locate x=85 y=359]
[link exp="tf.存档编号=6" target=%target onenter="showsnap(6)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(6)!=''"]
[emb exp="kag.getBookMarkDate(6)"]
[ch text="      " cond="kag.getBookMarkDate(6)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(6)==''"]
[endlink]


[locate x=85 y=403]
[link exp="tf.存档编号=7" target=%target onenter="showsnap(7)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(7)!=''"]
[emb exp="kag.getBookMarkDate(7)"]
[ch text="      " cond="kag.getBookMarkDate(7)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(7)==''"]
[endlink]


[locate x=85 y=446]
[link exp="tf.存档编号=8" target=%target onenter="showsnap(8)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(8)!=''"]
[emb exp="kag.getBookMarkDate(8)"]
[ch text="      " cond="kag.getBookMarkDate(8)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(8)==''"]
[endlink]



[endnowait]
;都显示完毕后，将字体改回原来的中文样式（返回对话后将使用的字体）
;[mappfont storage="font.tft"]
[font color=0x000000 shadow="false"]
[endmacro]

;16.5
[macro name=档案显示2]
[nowait]
;改变字体/其实就这么简单，这里采用了两种字体(中文和英文显示所用的字体不同，因此经常需要切换)
[font color=0x000000 shadow="false" size=22 bold=true]

;File No.1
[locate x=37 y=95]
;onenter(鼠标选中该档案)，onleave(鼠标离开该档案)时所执行的函数就在上面的iscript部分，注意到了吗？
[link exp="tf.存档编号=9" target=%target onenter="showsnap(9)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong"]
;显示文字"File No.1 "，并通过emb指令显示取得的"档案时间"
;[mappfont storage="font.tft"]
[ch text="        " cond="kag.getBookMarkDate(9)!=''"]
  [emb exp="kag.getBookMarkDate(9)"]
  [ch text="      " cond="kag.getBookMarkDate(9)!=''"]
;当档案不存在时显示的替代文字"----/--/-- --:--"
[ch text="           No Data             " cond="kag.getBookMarkDate(9)==''"]
[endlink]

[locate x=85 y=136]
[link exp="tf.存档编号=10" target=%target onenter="showsnap(10)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(10)!=''"]
[emb exp="kag.getBookMarkDate(10)"]
[ch text="      " cond="kag.getBookMarkDate(10)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(10)==''"]
[endlink]


[locate x=85 y=180]
[link exp="tf.存档编号=11" target=%target onenter="showsnap(11)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(11)!=''"]
[emb exp="kag.getBookMarkDate(11)"]
[ch text="      " cond="kag.getBookMarkDate(11)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(11)==''"]
[endlink]

[locate x=85 y=225]
[link exp="tf.存档编号=12" target=%target onenter="showsnap(12)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(12)!=''"]
[emb exp="kag.getBookMarkDate(12)"]
[ch text="      " cond="kag.getBookMarkDate(12)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(12)==''"]
[endlink]


[locate x=85 y=270]
[link exp="tf.存档编号=13" target=%target onenter="showsnap(13)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(13)!=''"]
[emb exp="kag.getBookMarkDate(13)"]
[ch text="      " cond="kag.getBookMarkDate(13)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(13)==''"]
[endlink]


[locate x=85 y=315]
[link exp="tf.存档编号=14" target=%target onenter="showsnap(14)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(14)!=''"]
[emb exp="kag.getBookMarkDate(14)"]
[ch text="      " cond="kag.getBookMarkDate(14)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(14)==''"]
[endlink]

[locate x=85 y=359]
[link exp="tf.存档编号=15" target=%target onenter="showsnap(15)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(15)!=''"]
[emb exp="kag.getBookMarkDate(15)"]
[ch text="      " cond="kag.getBookMarkDate(15)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(15)==''"]
[endlink]


[locate x=85 y=403]
[link exp="tf.存档编号=16" target=%target onenter="showsnap(16)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(16)!=''"]
[emb exp="kag.getBookMarkDate(16)"]
[ch text="      " cond="kag.getBookMarkDate(16)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(16)==''"]
[endlink]


[locate x=85 y=446]
[link exp="tf.存档编号=17" target=%target onenter="showsnap(17)" onleave="hidesnap()" clickse="dianji" color="0xfee8ba" enterse="yidong" entersebuf=3  clicksebuf=3]
[ch text="      " cond="kag.getBookMarkDate(17)!=''"]
[emb exp="kag.getBookMarkDate(17)"]
[ch text="      " cond="kag.getBookMarkDate(17)!=''"]
[ch text="           No Data             " cond="kag.getBookMarkDate(17)==''"]
[endlink]

[endnowait]
;都显示完毕后，将字体改回原来的中文样式（返回对话后将使用的字体）
;[mappfont storage="font.tft"]
[font color=0x000000 shadow="false"]
[endmacro]
;17
[macro name=询问窗口]
;使下层的按钮暂时失效。不使用的话，下层的按钮会继续有效，导致很多乌龙的效果
[locklink]
;设定当点右键时，返回的标签。宏的属性就是通过这些%格式的东西来传递的。
;例如说，[询问窗口 storgae=save.ks ok=*确认 cancle=*返回]
;会将参数"save.ks"，"*确认"，"*返回"传递到这里来。
;在这种情况下，下面这句就等同于[rclick enabled="true" jump="true" storage=save.ks target=*返回]
[rclick enabled="true" jump="true" storage=%storage target=%cancel]
;显示询问窗口
[backlay]
[layopt layer=message7 page=fore visible=true  opacity=0]
[position layer=message7 left=300 top=215  width=424 height=201 opacity=255 visible=true page=back frame=cdjm]
[current layer="message7" page="back"]
[nowait]
[font color="0xe9f2b7" shadow="false" bold=true size=18]
[locate x=20 y=50]
;mp.text相当于一般的%text，因为exp属性带的是TJS式，因此必须改写成这样
[emb exp="mp.text"]
[locate x=200 y=130]
[button normal=yes1 storage=%storage target="%ok" over="yes2" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[locate x=250 y=130]
[button normal=no1 storage=%storage target="%cancel" over="no2" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[endnowait]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
;backlay,trans和按钮的用法就不在这里说了，移到first.ks里讲吧。
[endmacro]



[macro name=询问窗口1]
;使下层的按钮暂时失效。不使用的话，下层的按钮会继续有效，导致很多乌龙的效果
[locklink]
;设定当点右键时，返回的标签。宏的属性就是通过这些%格式的东西来传递的。
;例如说，[询问窗口 storgae=save.ks ok=*确认 cancle=*返回]
;会将参数"save.ks"，"*确认"，"*返回"传递到这里来。
;在这种情况下，下面这句就等同于[rclick enabled="true" jump="true" storage=save.ks target=*返回]
[rclick enabled="true" jump="true" storage=%storage target=%cancel]
;显示询问窗口
[backlay]
[position layer=message7 left=290 top=200  width=424 height=201 opacity=255 visible=true page=fore frame=qrfhbt]
[current layer="message7" page="fore"]
[nowait]
[font color="0xe9f2b7" shadow="false" size=17]
;[locate x=60 y=70]
;mp.text相当于一般的%text，因为exp属性带的是TJS式，因此必须改写成这样
;[emb exp="mp.text"]
[locate x=215 y=120]
[button normal=yes1 storage=%storage target="%ok" over="yes2" enterse="yidong" clickse="dianji" entersebuf=3  clicksebuf=3 ]
[locate x=280 y=120]
[button normal=no1 storage=%storage target="%cancel" over="no2" enterse="yidong" clickse="dianji" entersebuf=3  clicksebuf=3 ]
[endnowait]
;backlay,trans和按钮的用法就不在这里说了，移到first.ks里讲吧。
[endmacro]


;=========================================================================================================

[iscript]
//=========================================================


// 快进模式的变更处理
function onSkipModeChange(skipAll) {
dm("111");
	if(!kag.inStable){
		dm("1.5");
		return;
		}
	if(skipAll && !kag.allskip) {
dm("222");
		kag.allskip = true;
		dm("333");
//		kag.current.buttons.skipall.loadButtons("config_skipall_over", "config_skipall_over");
//		kag.current.buttons.skipalrdy.loadButtons("config_skipalrdy_normal", "config_skipalrdy_over");
	} else if(!skipAll && kag.allskip) {
	dm("444");
		kag.allskip = false;
//		kag.current.buttons.skipall.loadButtons("config_skipall_normal", "config_skipall_over");
//		kag.current.buttons.skipalrdy.loadButtons("config_skipalrdy_over", "config_skipalrdy_over");
	}
}

 // skip状态的变更处理
function onSkipStateChange() {
	if(kag.skipMode) {
		kag.cancelSkip();
//		kag.current.buttons.skip.loadButtons("msg_skip_normal", "msg_skip_over");
	} else {
		kag.skipToStop();
//		if(!kag.inStable)
//			kag.current.buttons.skip.loadButtons("msg_skip_over", "msg_skip_over");
	}
}

//确认存档文件是否存在
function checkdata(num)
{
var cd = Storages.isExistentStorage(kag.saveDataLocation+'/data'+num+'.bmp');
return cd;
}
//=========================================================
//取得存档文件名
function storagedata(num)
{
var cd=kag.saveDataLocation+'/data'+num+'.bmp';
return cd;
}
//=========================================================
//显示截图及数据
 //   [iscript]
function onLeftClick()
{
  kag.process("youjian.ks", "*youjian2");
}

function onLeftClick1()
{
  kag.process("youjian.ks", "*youjianquanping2");
}
//[endscript]

function cg2(num1,num2)
{
f.cgname1=num1;
f.cgname2=num2;
}

function showsnap(num)
{
    //清空描绘层
    kag.fore.layers[4].loadImages(%['storage'=>'empty','visible'=>true,'left'=>410,'top'=>120]);
    //定义变数用于居中描绘文字
    var w;
    var pos;

    //显示Bookmark名
    //kag.fore.layers[4].font.mapPrerenderedFont("systemfont.tft");//选择特殊字体包
      w =kag.fore.layers[4].font.getTextWidth(kag.getBookMarkPageName(num));
      pos=(285-w)\2;
  //    kag.fore.layers[4].drawText(pos,160,kag.getBookMarkPageName(num), 0x336600);

      
    if (checkdata(num)==true) //如果档案存在，额外显示的内容[截图和游戏中进行到的地点名]
   {
     //显示截图
kag.fore.layers[5].loadImages(%['storage'=>kag.getBookMarkFileNameAtNum(num),'visible'=>true,'left'=>544,'top'=>199]);
      //显示地点[取得游戏档案中的变数内容]
        tf.place=sf.地点[num];
        kag.fore.layers[4].font.mapPrerenderedFont("font.tft");//选择特殊字体包
	//kag.fore.layers[4].font.height=10;
        w =kag.fore.layers[4].font.getTextWidth(tf.place);
        pos=(480-w)\2;  
        kag.fore.layers[4].drawText(pos,303,tf.place, 0x000000);  //描绘  
    }
     //描绘完毕还原字体样式
      kag.fore.layers[4].font.unmapPrerenderedFont();
}
//=========================================================
//隐藏截图及数据
function hidesnap()
{

//隐藏截图
   kag.fore.layers[5].visible=false;
//隐藏文字
   kag.fore.layers[4].visible=false;
}
//=========================================================
[endscript]




;16,新分支选项
[macro name=新分支选项]
[backlay]
[position layer=message4 left=0  top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 opacity=0 page=fore visible=true frame="mingming"]
[current layer=message4 page=fore][er][nowait]
[locate x=295 y=219][emb exp="mp.sele1"]
[locate x=295 y=269][emb exp="mp.sele2"]
[locate x=295 y=319 cond="mp.sele3 != void"][emb exp="mp.sele3" cond="mp.sele3 != void"]

[position layer=message3  top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 opacity=0 page=fore visible=true]
[current layer=message3 page=fore]
[locate x=240 y=200]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel1  enterse="l4" recthit=true enterse="yidong" clickse="dianji"
[locate x=240 y=250]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel2  enterse="l4" recthit=true enterse="yidong" clickse="dianji"
[locate x=240 y=300]
@button normal="xuanxiang1" over="xuanxiang2" target=%sel3  enterse="l4" enterse="yidong" clickse="dianji" recthit=true cond="mp.sele3 != void"
[s]
[endmacro]

;例：[新分支选项 sele1="无敌" sel1=*op4 sele2="英雄" sel2=*op5 sele3="牛比" sel3=*op6]
;*op4
;[去掉3分支选项]
;[iscript]
;sf.zb=sf.zb+1;
;[endscript]
;aaaaaaaa[p]
;[jump target=*xx]
;*op5
;[去掉3分支选项]
;[iscript]
;sf.zb=sf.zb+5;
;[endscript]
;0bbbbbbbb[p]
;[jump target=*xx]
;*op6
;[去掉3分支选项]
;[iscript]
;sf.zb=sf.zb+10;
;[endscript]
;0cccccc[p]
;[jump target=*xx]
;*xx

;[if exp="sf.zb==1"]
;一路线[p] 
;[elsif exp="sf.zb>1&&sf.zb<6"] 
;二路线[p]
;[else] 
;三路线[p]
;[endif]



;17,新分支选项清除
[macro name=新分支选项清除]
[current layer=message6 page=fore][er]
@move layer=message3 time=200 path="(173,600,255)"
@move layer=message4 time=200 path="(173,600,255)"
[wm]
[backlay]
[current layer=message1 page=fore]

[endmacro]




[macro name= 新功能集合]
;新功能集合

[image layer=0 page=fore storage=yewairi.jpg left=400 top=400 visible=true afx=400 afy=400]

[layopt layer=0 page=fore time=200 zoom=120]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=140]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=160]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=180]
[wait time=1000][er]
[layopt layer=0 page=fore time=200 zoom=160]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=140]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=120]
[wait time=200][er]
[layopt layer=0 page=fore time=200 zoom=100]
[音效1循环 s="xiayu" t="500"]
[显示文字框 t=200]
[显示背景图片渐变 s="xiayu" t="200"]
[显示立绘1 s="qlyteshu1.png" top=25 left=120 t="300"][p]
;[image layer=6 page=fore storage=qlyteshu1.png left=120 top=300 visible=true afx=50 afy=100]


[播放音乐渐变 s="xumuqu" t="1000"]
;*label1|半透明

[layopt layer=6 opacity=200]
;半透明
[l][r]

;*label2|回転

[layopt layer=6 reset]
[layopt layer=6 rotate=30]
;回転
[l][r]

[layopt layer=6 afx=left afy=top]
;回転原点変更（左上隅）
[l][r]

[layopt layer=6 afx=100 afy=100]
;回転原点変更（座標指定）
[l][r]

[layopt layer=6 afx=center afy=center]
;回転原点変更（センターに戻す）
[l][r]


;*label3|拡大

[layopt layer=6 reset]
[layopt layer=6 zoom=100 afx=center afy=center]
;拡大
[l][r]

;*label3|拡大

[layopt layer=6 reset]
[layopt layer=6 zoom=110 afx=center afy=center]
;拡大
[l][r]


;*label3.1|拡大

[layopt layer=6 reset]
[layopt layer=6 zoom=120 afx=center afy=center]
;拡大
[l][r]

;*label4|X拡大

[layopt layer=6 reset]
[layopt layer=6 zoomx=200]
;X拡大
[l][r]

;*label5|合成モード

[layopt layer=6 reset]
[layopt layer=6 type=ltPsDifference5]
;合成モード
[l][r]

;*label6|ガクブル

[layopt layer=6 reset]
[action layer=6 module=LayerVibrateActionModule vibration=20 waitTime=50]
;ガクブル
[l][r]

;*label7|縦ゆれ

[layopt layer=6 reset]
[action layer=6 module=LayerJumpActionModule vibration=20 cycle=1000]
;縦ゆれ
[l][r]

;*label8|横ゆれ

[layopt layer=6 reset]
[action layer=6 module=LayerWaveActionModule vibration=20 cycle=1000]
;横ゆれ
[l][r]

;*label9|指定角度に

[layopt layer=6 reset]
[action layer=6 module=LayerToRotateModule angle=30 time=1000]
;指定角度に
[wact]
[action layer=6 module=LayerToRotateModule angle=-50 time=1000]
;移動してみる
[wact]
[action layer=6 module=LayerToRotateModule angle=-0 time=1000]
;テストだよ
[wact]
[l][r]

;*label10|くるくるまわる

[layopt layer=6 reset]
[action layer=6 module=LayerNormalRotateModule angvel=100]
;くるくるまわる
[l][r]

;*label11|拡大率

[layopt layer=6 reset]
[action layer=6 module=LayerNormalZoomModule zoom=150 time=1000]
;キャラをズーム（時間指定）
[l][r]

;*label12|ズーム回転

[layopt layer=6 reset]
[action layer=6 module=LayerVRotateZoomModule angvel=100]
;ズームを利用した回転っぽいなにか
[l][r]

;*label13|不透明度

[layopt layer=6 reset]
[action layer=6 module=LayerFadeToModeModule opacity=128 time=1000]
;指定した不透明度に（時間指定）
[l][r]

;*label14|フェード点滅

[layopt layer=6 reset]
[action layer=6 module=LayerFadeModeModule intime=1000 outtime=1000]
;フェード点滅
[l][r]

;*label15|動画レイヤテスト

[layopt layer=6 reset]
[image layer=1 movie=test.mpg alpha=2 loop visible=true dafx=center dafy=center left=400 top=300]
;動画ロード
[l][r]

[layopt layer=6 zoom=50 time=1000]
;ズーム変更
[l][r]

[layopt layer=6 rotate=120 time=1000]
;回転
[l][r]
[endmacro]


[return]

