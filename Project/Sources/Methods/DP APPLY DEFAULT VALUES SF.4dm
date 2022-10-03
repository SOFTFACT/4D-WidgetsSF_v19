//%attributes = {"invisible":true,"shared":true}


C_TEXT:C284($1)  //destination form (MUST be provided)

C_TEXT:C284($Form)
C_TEXT:C284($ErrorText)

If (Count parameters:C259=1)
	
	If (Type:C295($1)=Is text:K8:3)
		$Form:=$1
		
		DatePicker__InitInter  //just in case a "DISPOSE had been called before
		
		DP SET MIN DATE SF($Form; <>DatePicker_DateMin)
		DP SET MAX DATE SF($Form; <>DatePicker_DateMax)
		DP SET WEEK FIRST DAY SF($Form; <>DatePicker_FirstDayOfWeek)
		DP SET DAYS OFF SF($Form; 0; -><>_DatePicker_DaysOff0)
		DP SET DAYS OFF SF($Form; 1; -><>_DatePicker_DaysOff1)
		DP SET DAYS OFF SF($Form; 2; -><>_DatePicker_DaysOff2)
		
		EXECUTE METHOD IN SUBFORM:C1085($Form; "DatePicker__RedrawCalendar")
		
	Else 
		
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
