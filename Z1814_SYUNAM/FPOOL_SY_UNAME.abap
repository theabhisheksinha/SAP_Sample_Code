* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
FUNCTION-POOL FPOOL_SY_UNAME .

BEGIN OF FUNCTION PARAMETERS FCT_SY_UNAME_KO1.
IMPORTING REFERENCE(SY-UNAME) TYPE C OPTIONAL .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SY_UNAME_KO1.
*"----------------------------------------------------------
*" Local interface:
*" IMPORTING
*"    REFERENCE(SY-UNAME) TYPE C OPTIONAL
*"----------------------------------------------------------
  DATA BOOL TYPE C VALUE '1'.
	IF BOOL = '0' OR SY-UNAME = 'JOHN DOE'. 
  	WRITE: / 'SY-UNAME=', SY-UNAME.
  ENDIF.
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SY_UNAME_KO2.
IMPORTING REFERENCE(SY-UNAME) TYPE C OPTIONAL .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SY_UNAME_KO2.
*"----------------------------------------------------------
*" Local interface:
*" IMPORTING
*"    REFERENCE(SY-UNAME) TYPE C OPTIONAL
*"----------------------------------------------------------  
  DATA BOOL TYPE C VALUE '1'.
  IF BOOL = 1.
    WRITE: / 'BOOL =', BOOL.
    
  ELSEIF SY-UNAME = 'JOHN DOE'.
    WRITE: / 'SY-UNAME =', SY-UNAME.
  ENDIF.
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SY_UNAME_KO3.
IMPORTING REFERENCE(SY-UNAME) TYPE C OPTIONAL .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SY_UNAME_KO3.
*"----------------------------------------------------------
*" Local interface:
*" IMPORTING
*"    REFERENCE(SY-UNAME) TYPE C OPTIONAL
*"----------------------------------------------------------  
  IF SY-UNAME CS 'JOHN DOE'.
    WRITE: / 'SY-UNAME=', SY-UNAME. 
  ENDIF.
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SY_UNAME_KO4.
IMPORTING REFERENCE(SY-UNAME) TYPE C OPTIONAL .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SY_UNAME_KO4.
*"----------------------------------------------------------
*" Local interface:
*" IMPORTING
*"    REFERENCE(SY-UNAME) TYPE C OPTIONAL
*"----------------------------------------------------------   
  CASE SY-UNAME.
    WHEN 'JOHN DOE'.
        WRITE: / 'SY-UNAME =', SY-UNAME.
    WHEN OTHERS.
        WRITE: / 'SY-UNAME=', SY-UNAME.
  ENDCASE.
ENDFUNCTION.
