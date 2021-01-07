# evernote_ahk
用autohotkey编写的evernote的快捷键和快捷方式
快捷键如下:
/+head    设置为标题
/+txt     设置为正文
/+code    代码块
/+excel   插入表格
/+cr      设置字体为red
/+cb      设置字体为black
/+ch      高亮

在使用时,直接输入/cr,就是将后面要写的字变为红色
输入/code,添加代码块
输入/excel,添加一个1*2的表格
其中需要注意的是在设置字体颜色时,可能需要根据自己电脑的evernote界面中设置字体颜色的坐标进行修改.
查询坐标的方式,可以使用ctrl+q的方式.会弹出对话框.
----
另:如果在evernote中无法使用快捷键,可以将#IfWinActive, ahk_exe Evernote.exe语句屏蔽,或者将Evernote.exe替换成你电脑任务管理器中显示的进程名称.
----
另外对evernote进阶的格式操作可以见网址:
https://www.appinn.com/evernote-ahk-script-windows/
和
https://www.programmersought.com/article/50183884741/
以及
https://www.v2ex.com/t/186506.
使用的都是如下编写的函数:
;把原先的文本，带格式拷出来，外面裹上新格式html，再粘贴回去
evernoteEdit(eFoward, eEnd)
{
clipboard =
Send ^c ;copy chosen text in evernote
ClipWait, ,
t := WinClip.GetHTML_DOM() ;get text with format from clipbd
html = %eFoward%%t%%eEnd% ;add new format
WinClip.Clear()
WinClip.SetHTML(html) ;return new format text to clipbd
Sleep, 300
Send ^v ;paste to evernote
Return
}
#1::evernoteEdit("<div style='color: #F02E37;'><b>", "</b></div>")
!1::evernoteEdit("<div style='background: #FFFAA5;'>", "</div>")
但是evernoteEdit函数似乎依然存在问题,所以很多时候是有bug的.
