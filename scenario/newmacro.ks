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
[position layer=message5 left=200 top=200  width=424 height=201 opacity=0 visible=true page=back frame=cdjm]
[current layer="message5" page="back"]
[nowait]
[font color="0x000000" shadow="false" bold=true size=18]
[locate x=10 y=70] 
;mp.text相当于一般的%text，因为exp属性带的是TJS式，因此必须改写成这样
[emb exp="mp.text"]
[locate x=200 y=170]
[button normal=shi storage=%storage target="%ok" over="shiB" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[locate x=250 y=170]
[button normal=fou storage=%storage target="%cancel" over="fouB" enterse="yidong" clickse="dianji"  entersebuf=3  clicksebuf=3 ]
[endnowait]
[trans method="crossfade" time=200]
[wt]
;backlay,trans和按钮的用法就不在这里说了，移到first.ks里讲吧。
[endmacro]


;-------------------------------------------------------------------------------------------------------------------------------------

[iscript]
function onLeftClick()
{
  kag.process("youjian.ks", "*youjian2");
}

function onLeftClick1()
{
  kag.process("youjian.ks", "*youjianquanping2");
}

function checkdata(num)
{
var cd = Storages.isExistentStorage(kag.saveDataLocation+'/data'+num+'.bmp');
return cd;
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

[endscript]
[return]