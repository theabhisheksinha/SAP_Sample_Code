* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .

REPORT ZREPORT_AUTHORITYCHECK.

********************* events *************************
* Events do not test SY-SUBRC, so failed

INITIALIZATION.
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' FIELD DUMMY
                  ID 'ACTVT'  FIELD '03'.
  
START-OF-SELECTION.
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' FIELD DUMMY
                  ID 'ACTVT'  FIELD '03'.

*************** forms *******************
* Form do not test SY-SUBRC
FORM FRM_AUTHORITYCHECK_KO1.
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' DUMMY
                  ID 'ACTVT'  FIELD '03'.
ENDFORM.

*
* Forms test SY-SUBRC

FORM FRM_AUTHORITYCHECK_OK1.
  DATA BOOL TYPE C VALUE '1'.
  
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' DUMMY
                  ID 'ACTVT'  FIELD '03'.
                  
  IF BOOL = '1' AND SY-SYBRC = 0.
    WRITE: / 'AUTHORITY CHECK IS OK'.
  ELSE.
    MESSAGE e184(sabapdocu) WITH text-010.
  ENDIF.
  
ENDFORM.

FORM FRM_AUTHORITYCHECK_OK2.
  DATA BOOL TYPE C VALUE '1'.
  
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' DUMMY
                  ID 'ACTVT'  FIELD '03'.
                  
  IF BOOL = '1' OR SY-SYBRC = 0.
    WRITE: / 'AUTHORITY CHECK IS OK'.
  ELSE.
    MESSAGE e184(sabapdocu) WITH text-010.    
  ENDIF.
  
ENDFORM.

FORM FRM_AUTHORITYCHECK_OK3.
  DATA BOOL TYPE C VALUE '1'.
  
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' DUMMY
                  ID 'ACTVT'  FIELD '03'.
                  
  IF BOOL = '1'.
  ELSEIF SY-SUBRC EQ 0.
    WRITE: / 'AUTHORITY CHECK IS OK'.
  ELSE.
    MESSAGE e184(sabapdocu) WITH text-010.  
  ENDIF.

ENDFORM.

FORM FRM_AUTHORITYCHECK_OK4.
  DATA BOOL TYPE C VALUE '1'.
  
  AUTHORITY-CHECK OBJECT 'S_CARRID'
                  ID 'CARRID' DUMMY
                  ID 'ACTVT'  FIELD '03'.
                  
  CASE SY-SUBRC.
    WHEN (0).
        WRITE: / 'AUTHORITY CHECK IS OK'.
    WHEN OTHERS.
        MESSAGE e184(sabapdocu) WITH text-010.
  ENDCASE.
        
ENDFORM.