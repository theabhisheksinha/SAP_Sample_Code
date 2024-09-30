* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .
FUNCTION-POOL FPOOL_AUTHORITYCHECK .

BEGIN OF FUNCTION PARAMETERS FCT_AUTHORITYCHECK_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_AUTHORITYCHECK_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' FIELD DUMMY
                  ID 'ACTVT'  FIELD '03'.
  
ENDFUNCTION.
