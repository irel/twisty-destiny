*open| 
[position layer=message0 page=back frame="" visible=false] 
[current layer=message0 page=back][er] 
;清空messge1，就是把封面清除掉 

[image layer=base page=back storage="bj2" visible=true left=0 top=0 opacity=255] 
[trans method=crossfade time=500][wt] 
;更改背景图片 
[l]
[image layer=1 page=back storage="qj2" visible=true left=100 top=0] 
;[image layer=2 page=back storage="qj2" visible=true left=350 top=0] 
;[pimage storage="qj3" layer=1 visible=true dx=100 dy=0 page=back] 
[trans method=crossfade time=300][wt] 
;出现人物立绘 
[l]
[position layer=message1 left=50 top=430 width=704 height=140 marginl=71 margint=17 marginr=73 marginb=17 opacity=255 visible=true frame="frame" page=back] 
[trans method=crossfade time=800][wt] 
;出现对话框 

[l]
[current layer=message1 pgae=fore] 
[deffont face="黑体" size=20 color=0xffffff] 
[defstyle linespacing=10 pitch=0 linesize=4] 
[er] 
我讨厌你。[p][er] 
;输出对话文字 
[l]
[backlay] 
[image layer=1 page=back storage="qj3" visible=true left=100 top=0] 
;[pimage storage="bj3" layer=1 visible=true dx=260 dy=107 page=back] 
[trans method=crossfade time=300][wt] 
;更改立绘 

[current layer=message1 pgae=fore] 
我真的非常非常的讨厌你。[p][er] 

[l]


[夕反对反对 normal]
夕方（キャラクタは自動的に色補正されます）

[夜 normal]

*label1|半透明

[layopt layer=1 opacity=200]
半透明
[l][r]

*label2|回転

[layopt layer=1 reset]
[layopt layer=1 rotate=30]
回転
[l][r]

[layopt layer=1 afx=left afy=top]
回転原点変更（左上隅）
[l][r]

[layopt layer=1 afx=100 afy=100]
回転原点変更（座標指定）
[l][r]

[layopt layer=1 afx=center afy=center]
回転原点変更（センターに戻す）
[l][r]


*label3|拡大

[layopt layer=1 reset]
[layopt layer=1 zoom=150]
拡大
[l][r]

*label4|X拡大

[layopt layer=1 reset]
[layopt layer=1 zoomx=200]
X拡大
[l][r]

*label5|合成モード

[layopt layer=1 reset]
[layopt layer=1 type=ltPsDifference5]
合成モード
[l][r]

*label6|ガクブル

[layopt layer=1 reset]
[action layer=1 module=LayerVibrateActionModule vibration=20 waitTime=50]
ガクブル
[l][r]

[layopt layer=1 reset]
[action layer=1 module=LayerJumpActionModule vibration=20 cycle=1000]
縦晃动
[l][r]



[layopt layer=1 reset]
[action layer=1 module=LayerWaveActionModule vibration=20 cycle=1000]
横晃动
[l][r]

[position layer=message1 frame="" page=back visible=false] 
[trans method=crossfade time=800][wt] 
;对话框消失 

[freeimage layer=1 page=back] 
[freeimage layer=2 page=back] 
[trans method=crossfade time=300][wt] 
;人物立绘消失 

[freeimage layer=base page=back] 
[trans method=crossfade time=500][wt] 
;背景消失 

[jump target=*start storage="first.ks"] 
;跳回开始画面
