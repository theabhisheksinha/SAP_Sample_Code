* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
CLASSPOOL_NAME CLASSPOOL_SY_UNAME .
method CLASS_CONSTRUCTOR.
  DATA BOOL TYPE C VALUE '1'.
  
  IF BOOL = '0' OR SY-UNAME = 'JOHN DOE'. 
  	WRITE: / 'SY-UNAME=', SY-UNAME.
  ENDIF.
ENDMETHOD.
  