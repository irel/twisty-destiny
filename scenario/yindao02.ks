*yindao02

[if exp="sf.shedingxx==1"]
[jump storage="first.ks" target=*start]
[else]
[clickskip enabled=false]
[显示背景图片渐变 s="BG_02" t="500"][播放音效 s="zhong"]
[显示背景图片渐变 s="xixinpian1" t="500"]
[显示背景图片渐变 s="xixinpian2" t="1000"][wait time=3000][er]
[显示背景图片渐变 s="BG_02" t="1000"]
[关闭音效1 t="1000"]
[clickskip enabled=true]

[waitclick]
[eval exp="sf.shedingxx=1"]
[关闭音乐渐变 t="1000"]
[同时消失  t="1000"]
[jump storage="first.ks" target=*start]
[endif]