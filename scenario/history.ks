*start
[rclick enabled="true" jump="true" storage="history.ks" target=*return]
[history enabled=false output=false]
[backlay]
[layopt layer=message5 page=fore visible=true  opacity=0]
[image layer=9 page="back" storage="bjlog" visible="true" left=0 top=0]
[layopt layer=message1 visible=false page=back]
[layopt layer=message2 visible=false page=back]
[layopt layer="message5" visible="true" page="back" left=0 top=0]

;调整文字显示位置

[position layer=message5 page=back visible=true opacity=255 top=0 height=640 left=0 width=960  marginl=45 margint=121 marginr=0 marginb=0 frame="bjlog"]
[current layer="message5" page="back"]
[er]

;计算页数
[eval exp="tf.行数=kag.historyLayer.dataPos-1"]
[eval exp="tf.页数=tf.行数\10"]
[eval exp="tf.页数++" cond="tf.行数%10>0"]
[eval exp="tf.循环=10"]

[eval exp="tf.当前页=tf.页数"]

;打开时显示最后一页
*循环一
[nowait]
;历史记录不到头则显示
[if exp="kag.historyLayer.dataPos-tf.循环>=0"]
;一般对话字体
;[font  color="0x000000" shadow="false"]
;姓名显示字体
;[font color="0x000000" shadow="false" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环].substring(0,1)=='〔'"]
;@link exp="kag.historyLayer.actionInfo[0][0][0].action.exp"
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环]"]
;[endlink]
[r]
[endif]
[eval exp="tf.循环--"]

[jump target=*循环一 cond="tf.循环>0"]
[endnowait]
[locate x=761 y=3]
[button normal=shang target=*刷新画面 exp="tf.当前页--" cond="tf.当前页>1"]
[locate x=781 y=460]

[button normal=back1 over=back2 storage="history.ks" target=*return]
[trans method="crossfade" time=200]
[wt]
[s]

*刷新画面
[current layer="message5" page="fore"]
[er]
[eval exp="tf.循环=10"]

*循环二
[nowait]

;--------------------------------------------------------
;不是第一页的情况
[if exp="tf.当前页!=1"]

;历史记录不到头则显示
[if exp="kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10>=0"]
;一般对话字体
;[font  color="0x000000" shadow="false"]
;姓名显示字体
;[font color="0x000000" shadow="false" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10].substring(0,1)=='〔'"]
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10]"][r]
[endif]

[endif]
;--------------------------------------------------------
;第一页的情况
[if exp="tf.当前页==1"]
;一般对话字体
;[font color="0x000000" shadow="false"]
;[font color="0x000000" shadow="false"  cond="kag.historyLayer.data[10-tf.循环].substring(0,1)=='〔'"]
[emb exp="kag.historyLayer.data[10-tf.循环]"][r]
[endif]
;--------------------------------------------------------


[eval exp="tf.循环--"]

[jump target=*循环二 cond="tf.循环>0"]
[endnowait]

[locate x=761 y=3]
[button normal=shang target=*刷新画面 exp="tf.当前页--" cond="tf.当前页>1"]
[locate x=761 y=387]
[button normal=xia target=*刷新画面 exp="tf.当前页++" cond="tf.当前页<tf.页数"]
[locate x=781 y=460]
[button normal=back1 over=back2 storage="history.ks" target=*return]
[s]



*return
[history enabled=true output=true]
[backlay]
[freeimage layer=9 page=back]
[layopt layer="message5" visible="false" page="back"]
[layopt layer=message2 visible=true page=back]
[layopt layer=message1 visible=true page=back]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
;缩略图锁定取消
;这里所有系统(SAVE,LOAD,OPTION)的返回都将返回*return标签，因此锁定取消只要设定一次
;锁定和锁定取消必须是一一对应的，因此如果你设定了多了返回游戏的标签，每个的末尾都要取消锁定
;否则下一次再进入主菜单就会出错
[return]