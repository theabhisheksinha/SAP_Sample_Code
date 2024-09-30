* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
FUNCTION-POOL FPOOL_SYSTEM_CALL .

BEGIN OF FUNCTION PARAMETERS FCT_SYSTEM_CALL_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_SYSTEM_CALL_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
  DATA f1     TYPE C VALUE 'Z'.
  DATA f2(80) TYPE C VALUE 'fct_system_call_ko1'.
  DATA f3(5)  TYPE C VALUE 'FCT'. 
  
  SYSTEM-CALL CHECK f1 FOR SEQUENCE OF C FUNCTION f2 PARAMETER f3. 
  
ENDFUNCTION.
