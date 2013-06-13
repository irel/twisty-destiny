*cg
[eval exp="f.当前cg页=1"]

[locklink]
[rclick enabled="true" jump="true" storage="cg.ks" target=*return1]
[backlay]
[position layer=message0 visible="false" page=back]
[layopt layer=message3 page=fore visible=true  opacity=0]

;[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="shezhi.jpg"]
;[current layer=message3 page=back][er][nowait]



*刷新
[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="CGjianshang.jpg"]
[current layer=message3 page=back][er][nowait]
;不是第一页，显示翻上页按钮
;[if exp="f.当前cg页>1"]
;[locate x=40 y=95]
;[link target=*刷新 exp="f.当前cg页--"]上一页[endlink]
;[endif]
;不是最后一页，显示翻下页按钮
;[if exp="f.当前cg页<9"]
;[locate x=40 y=135]
;[link target=*刷新 exp="f.当前cg页++"]下一页[endlink]
;[endif]
;显示当前页号码
;[locate x=340 y=440]
;Page No.[emb exp="f.当前cg页"]

;cond="sf.cg_01==1"
;[eval exp="sf.cg_01=1"]



[locate x=830 y=579]
[button normal=back1  target=*return1  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="cg.ks"]

[if exp="f.当前cg页==1"]
[locate x=97 y=83]
[button normal=ZCG0101 over=ZCG0102  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG01'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_01==1"]
[locate x=292 y=83]
[button normal=ZCG0201 over=ZCG0202  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG02'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_02==1"]

[locate x=487 y=83]
[button normal=ZCG0301 over=ZCG0302  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG03'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_03==1"]
[locate x=675 y=83]
[button normal=ZCG0401 over=ZCG0402  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG04'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_04==1"]

[locate x=97 y=208]
[button normal=ZCG0501 over=ZCG0502  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG05'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_05==1"]
[locate x=292 y=208]
[button normal=ZCG0601 over=ZCG0602  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG06'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_06==1"]

[locate x=487 y=208]
[button normal=ZCG0701 over=ZCG0702  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG07'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_07==1"]
[locate x=675 y=208]
[button normal=ZCG0801 over=ZCG0802  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG08'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_08==1"]

[locate x=97 y=333]
[button normal=ZCG0901 over=ZCG0902  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG09'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_09==1"]
[locate x=292 y=333]
[button normal=ZCG1001 over=ZCG1002  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG10'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_10==1"]

[locate x=487 y=333]
[button normal=ZCG1101 over=ZCG1102  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG11'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_11==1"]
[locate x=675 y=333]
[button normal=ZCG1201 over=ZCG1202  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG12'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_12==1"]

[locate x=97 y=458]
[button normal=ZCG1301 over=ZCG1302  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG13'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_13==1"]
[locate x=292 y=458]
[button normal=ZCG1401 over=ZCG1402  enterse="yidong" clickse="dianji" exp="f.cgname='ZCG14'" target=*显示CG  entersebuf=3 clicksebuf=3 cond="sf.cg_14==1"]
[endif]

;第二页cg10-cg19
;[if exp="f.当前cg页==2"]
;[locate x=152 y=102]
;[button normal=CG1B over=CG1A  enterse="yidong" clickse="dianji" exp="f.cgname='suxing1'" target=*显示CG  entersebuf=3 clicksebuf=3  cond="sf.cg_01==1"]
;[locate x=330 y=102]
;[button normal=CG2B over=CG2A  enterse="yidong" clickse="dianji" exp="f.cgname='caochangri2.jpg',f.cgname2='caochangri.jpg'" target=*显示CG2  entersebuf=3 clicksebuf=3  cond="sf.cg_01==1"]
;[endif]

;第二页cg10-cg19
;[if exp="f.当前cg页==3"]
;[locate x=152 y=202]
;[button normal=CG1B over=CG1A  enterse="yidong" clickse="dianji" exp="f.cgname='suxing1'" target=*显示CG  entersebuf=3 clicksebuf=3  cond="sf.cg_01==1"]
;[locate x=330 y=202]
;[button normal=CG2B over=CG2A  enterse="yidong" clickse="dianji" exp="f.cgname='caochangri2.jpg',f.cgname2='caochangri.jpg'" target=*显示CG2  entersebuf=3 clicksebuf=3  cond="s.cg_01==1"]
;[endif]
[stoptrans]
[trans method="crossfade" time=500  enterse="yidong" clickse="dianji"]
[wt]

[s]

*显示CG
;根据点下按钮传过来的cg文件名，显示对应的图片
[rclick jump=true target=*返回 storage="cg.ks" enabled=true]
[backlay]
[position layer=message4 page=back frame=&"f.cgname" top=0 left=0 visible=true opacity=255]
[current layer="message4" page="back"]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
;等待点击
[s]

*显示CG2
;根据点下按钮传过来的cg文件名，显示对应的图片
[rclick jump=true target=*返回 storage="cg.ks" enabled=true]
[backlay]
[position layer=message4 page=back frame=&"f.cgname" top=0 left=0 visible=true opacity=255]
[current layer="message4" page="back"]
[stoptrans]
[trans method="crossfade" time=200][l]
[position layer=message4 page=back frame=&"f.cgname2" top=0 left=0 visible=true opacity=255]
[current layer="message4" page="back"]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
;等待点击
[s]

*返回
;点后消除图片，返回cg界面
[rclick jump=true target=*return1 storage="cg.ks" enabled=true]
[backlay]
;[freeimage layer=3 page="back"]
[position layer=message4 page=back frame=&"f.cgname" top=0 left=0 opacity=255 visible=false]
[current layer="message3" page="back"]
[stoptrans]
[trans method="crossfade" time=200][wt]
[unlocklink]

[s]



*return1
[backlay]
[layopt layer="message3" visible="false" page="back"]
[layopt layer="message4" visible="false" page="back"]
[rclick enabled="false"]
[locklink]
[jump target=*first1 storage="first.ks"]