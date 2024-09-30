* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
FUNCTION-POOL FPOOL_SYNTAX_CHECK .

BEGIN OF FUNCTION PARAMETERS FCT_SYSTEM_CALL_KO1.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SYSTEM_CALL_KO1.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
  SET EXTENDED CHECK OFF.
  
  WRITE: / 'SYNTAX CHECK DISABLED'.
  
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SYSTEM_CALL_KO2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SYSTEM_CALL_KO2.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
  WRITE: 'excludes error messages regarding the current ABAP command'. "#EC *

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SYSTEM_CALL_OK1.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SYSTEM_CALL_OK1.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
  SET EXTENDED CHECK ON.
  
  WRITE: / 'SYNTAX CHECK ENABLED'. 

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_SYSTEM_CALL_OK2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SYSTEM_CALL_OK2.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
  DATA: itab TYPE STANDARD TABLE OF string,
        mess TYPE string,
         lin TYPE i,
         wrd TYPE string,
         dir TYPE trdir. 

  APPEND 'PROGRAM test.'                  TO itab.
  APPEND 'DATA dat TYPE d.'               TO itab.
  APPEND 'DATA len TYPE i.'               TO itab.
  APPEND 'DESCRIBE FIELD dat LENGTH len.' TO itab.  
  
  SYNTAX-CHECK FOR itab MESSAGE mess LINE lin WORD wrd.

  WRITE: / 'SYNTAX CHECK for the content of the internal table itab - small Abap test program'. 

ENDFUNCTION.