//%attributes = {"invisible":true}
C_POINTER:C301($PtrDefaultInited)

$PtrDefaultInited:=Self:C308(Object named:K67:5; "FormInited")
If (Not:C34(Is nil pointer:C315($PtrDefaultInited)))
	
	If ($PtrDefaultInited->=0)
		$PtrDefaultInited->:=1
		
		TP SET MIN TIME SF(""; <>TimePicker_TimeMin)
		TP SET MAX TIME SF(""; <>TimePicker_TimeMax)
		TP SET STEP SF(""; <>TimePicker_Step)
		TP SET LABEL AM SF(""; <>TimePicker_LabelAM)
		TP SET LABEL PM SF(""; <>TimePicker_LabelPM)
		
	End if   //already inited
End if   //not nil
