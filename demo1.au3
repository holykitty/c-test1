#Region ;**** ���������� ACNWrapper_GUI ****
#PRE_icon=..\JYT\TTLK\editor.exe|-1
#PRE_Outfile=C:\Users\QinJuan\Desktop\1\1.exe
#PRE_Compile_Both=y
#PRE_Res_requestedExecutionLevel=None
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <ColorConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <AVIConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
;������
$Form1 = GUICreate("Form1",  979, 600, 137, 0, BitOR($GUI_SS_DEFAULT_GUI,$WS_MAXIMIZEBOX,$WS_TABSTOP))

;�˵�
$MenuItem3 = GUICtrlCreateMenu("�ļ�")
$MenuItem7 = GUICtrlCreateMenuItem("���ļ�", $MenuItem3)
$MenuItem6 = GUICtrlCreateMenuItem("MenuItem6", $MenuItem3)
$MenuItem5 = GUICtrlCreateMenuItem("MenuItem5", $MenuItem3)
$MenuItem4 = GUICtrlCreateMenuItem("MenuItem4", $MenuItem3)
$MenuItem2 = GUICtrlCreateMenu("�༭")
$MenuItem1 = GUICtrlCreateMenu("����")

GUISetBkColor(0x323232)
;Ԥ����ʱ����
$Pic1 = GUICtrlCreatePic("D:\editertest\pic\2.jpg", 16, 288, 940, 15)
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
;�ָ���
$Pic2 = GUICtrlCreatePic("D:\editertest\pic\1.jpg", 0, 350, 977, 9)
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)


;Ԥ��������
$Button1 = GUICtrlCreateButton("Button1", 420, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\play.ico", -1)
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$Button2 = GUICtrlCreateButton("Button2", 368, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\the last.ico", -1)
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$Button3 = GUICtrlCreateButton("Button3", 394, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\fast backward.ico", -1)
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$Button4 = GUICtrlCreateButton("Button4", 446, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\next.ico", -1)
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$Button5 = GUICtrlCreateButton("Button5", 472, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\fast forward.ico", -1)
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$Combo1 = GUICtrlCreateCombo("", 504, 315, 41, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "����Ӧ|100%|50%|200%")
GUICtrlSetResizing(-1, $GUI_DOCKHCENTER+$GUI_DOCKVCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)

;ƬͷƬβ����
$Button6 = GUICtrlCreateButton("Button6", 40, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\hide.ico", -1)
$Button7 = GUICtrlCreateButton("Button7", 40, 315, 20, 20, $BS_ICON)
GUICtrlSetImage(-1, "D:\editertest\pic\show.ico", -1)

;TAB
Local $TAB1 = GUICtrlCreateTab(48, 32, 241, 177)
Local $n1 = GUICtrlCreateTabItem("n1")
Local $Pic1 = GUICtrlCreatePic("D:\editertest\pic\11.jpg", 56, 72, 65, 73)
Local $n2 = GUICtrlCreateTabItem("n2")
Local $Pic2 = GUICtrlCreatePic("D:\editertest\pic\12.jpg", 176, 72, 65, 73)

; ��ʾ GUI.
GUISetState(@SW_SHOW)
GUICtrlSetState($Button7, $GUI_HIDE)
GUICtrlSetState($TAB1, $GUI_HIDE)
GUICtrlSetState($Pic1, $GUI_HIDE)
GUICtrlSetState($Pic2, $GUI_HIDE)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button6
			GUICtrlSetState($TAB1, $GUI_SHOW)
			GUICtrlSetState($Pic1, $GUI_SHOW)
			GUICtrlSetState($Pic2, $GUI_SHOW)
			GUICtrlSetState($n1, $GUI_SHOW)
			GUICtrlSetState($Button7, $GUI_SHOW)
			GUICtrlSetState($Button6, $GUI_HIDE)
		Case $Button7
			GUICtrlSetState($TAB1, $GUI_HIDE)
			GUICtrlSetState($Pic1, $GUI_HIDE)
			GUICtrlSetState($Pic2, $GUI_HIDE)
			GUICtrlSetState($Button6, $GUI_SHOW)
			GUICtrlSetState($Button7, $GUI_HIDE)
	EndSwitch
WEnd
