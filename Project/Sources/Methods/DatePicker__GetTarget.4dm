//%attributes = {"invisible":true}

#DECLARE()->$date : Date

var $containerValue : Variant
$containerValue:=OBJECT Get subform container value:C1785

If (Value type:C1509($containerValue)=Is date:K8:7)
	$date:=$containerValue
End if 























//var $ptr : Pointer
//var $type : Integer
//var $ok : Boolean

//$ptr:=OBJECT Get pointer(Object subform container)  //parent associated variable witch is a date OR and object

//$ok:=False

//If (Form#Null)  // either varObject.value or Form.object.value associated to the subform container
//If (Not(Undefined(Form.value)))
//If (Value type(Form.value)=Is date)
//$date:=Form.value
//$ok:=True
//End if 
//End if 
//End if 

//If (Not($ok))
//If (Not(Is nil pointer($ptr)))
//If (Type($ptr->)=Is date)
//$date:=$ptr->
//End if 
//End if 
//End if 




/*



C_DATE(dummyDate)  //ACI0099964  (just for test in interpreted mode)

C_POINTER($0)

C_POINTER($target)
C_POINTER($ptr)
C_LONGINT($type)

$ptr:=OBJECT Get pointer(Object subform container)  //parent associated variable witch is a date
If (Not(Is nil pointer($ptr)))
$type:=Type($ptr->)
If ($type=Is date)
$target:=$ptr
Else 
$target:=->dummyDate  // ACI0097774 the returned pointer can't be NIL
End if 
Else 
$target:=->dummyDate  // ACI0097774 the returned pointer can't be NIL
End if 

$0:=$target


*/
