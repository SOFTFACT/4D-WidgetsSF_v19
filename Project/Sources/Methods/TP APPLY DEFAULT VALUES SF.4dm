//%attributes = {"invisible":true,"shared":true}


C_TEXT:C284($1)  //destination form (MUST be provided)

C_TEXT:C284($Form)
C_TEXT:C284($ErrorText)

If (Count parameters:C259=1)
	
	If (Type:C295($1)=Is text:K8:3)
		$Form:=$1
		
		TimePicker__InitInter  //just in case a "DISPOSE had been called before
		
		TP SET MIN TIME SF($Form; <>TimePicker_TimeMin)
		TP SET MAX TIME SF($Form; <>TimePicker_TimeMax)
		TP SET LABEL AM SF($Form; <>TimePicker_LabelAM)
		TP SET LABEL PM SF($Form; <>TimePicker_LabelPM)
		TP SET STEP SF($Form; <>TimePicker_Step)
		
		
		If ($Form#"")
			EXECUTE METHOD IN SUBFORM:C1085($Form; "TimePicker__DisplayTimeInputs"; *; False:C215)  //  if no HH MM SS entry zones does nothing
			EXECUTE METHOD IN SUBFORM:C1085($Form; "TimePicker__DisplayTimePopups"; *; False:C215)  //  If no popup in form does nothing
		End if 
		
	Else 
		//not a text
		$ErrorText:=Get localized string:C991("Errors_TextParameter")
		$ErrorText:=Replace string:C233($ErrorText; "[1]"; Current method name:C684)
		ALERT:C41($ErrorText)
	End if 
	
Else 
	
	//incorrect number of parameters
	$ErrorText:=Get localized string:C991("Errors_IncorrectParamNumbers")
	$ErrorText:=Replace string:C233($ErrorText; "[1]"; Current method name:C684)
	ALERT:C41($ErrorText)
	
End if 


