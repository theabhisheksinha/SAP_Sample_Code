* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
BADI_NAME BADICLASSPOOL_SYSTEM_CALL .
METHOD SEND_BADI_EVENT_SYSTEM_CALL_KO3 .

  RAISE EVENT BADI_EVENT_SYSTEM_CALL_KO3
        EXPORTING I_MESSAGE = SY-SUBRC.
ENDMETHOD.
