
#SingleInstance Force
#NoTrayIcon

#NoEnv						;不检查空变量是否为环境变量
	SetBatchLines, -1			;行之间运行不留时间空隙,默认是有10ms的间隔
	SetKeyDelay, -1, -1			;发送按键不留时间空隙
	SetMouseDelay, -1			;每次鼠标移动或点击后自动的延时=0   
	SetDefaultMouseSpeed, 0		;设置在 Click 和 MouseMove/Click/Drag 中没有指定鼠标速度时使用的速度 = 瞬间移动.
	SetWinDelay, 0
	SetControlDelay, 0
	SendMode Input

	#InstallKeybdHook		;安装键盘和鼠标钩子 像Input和A_PriorKey，都需要钩子
	#InstallMouseHook
	SetTitleMatchMode Regex	;更改进程匹配模式为正则
	#SingleInstance force	;决定当脚本已经运行时是否允许它再次运行。
	#Persistent				;持续运行不退出
	#MaxThreadsPerHotkey 5

    ;Menu, tray, tip, 印象笔记-编辑增强小工具
	;TrayTip, 提示, 印象笔记-编辑增强小工具, , 1
	Sleep, 1000

	
	Alt & x::
	clipboard =   ; 清空剪贴板
	nulltext=
	clipboard= %clipboard%
	send ^c
	ClipWait ,0.1,1
	MsgBox begin
	if(clipboard=nulltext)
	{
		txttmp:="   "
		Clipboard:=txttmp . "hello"
		send ^v
	}
	else
	{
		MsgBox %clipboard%
		clipboard=head-%clipboard%-tail
		MsgBox %clipboard%
		send ^v
	}

	return 



	
	
	
	
	
	
	
	
	