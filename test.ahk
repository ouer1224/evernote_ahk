
#SingleInstance Force
#NoTrayIcon

#NoEnv						;�����ձ����Ƿ�Ϊ��������
	SetBatchLines, -1			;��֮�����в���ʱ���϶,Ĭ������10ms�ļ��
	SetKeyDelay, -1, -1			;���Ͱ�������ʱ���϶
	SetMouseDelay, -1			;ÿ������ƶ��������Զ�����ʱ=0   
	SetDefaultMouseSpeed, 0		;������ Click �� MouseMove/Click/Drag ��û��ָ������ٶ�ʱʹ�õ��ٶ� = ˲���ƶ�.
	SetWinDelay, 0
	SetControlDelay, 0
	SendMode Input

	#InstallKeybdHook		;��װ���̺���깳�� ��Input��A_PriorKey������Ҫ����
	#InstallMouseHook
	SetTitleMatchMode Regex	;���Ľ���ƥ��ģʽΪ����
	#SingleInstance force	;�������ű��Ѿ�����ʱ�Ƿ��������ٴ����С�
	#Persistent				;�������в��˳�
	#MaxThreadsPerHotkey 5

    ;Menu, tray, tip, ӡ��ʼ�-�༭��ǿС����
	;TrayTip, ��ʾ, ӡ��ʼ�-�༭��ǿС����, , 1
	Sleep, 1000

	
	Alt & x::
	clipboard =   ; ��ռ�����
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



	
	
	
	
	
	
	
	
	