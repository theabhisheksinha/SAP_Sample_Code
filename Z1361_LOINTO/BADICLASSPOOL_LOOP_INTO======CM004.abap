* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
BADI_NAME BADICLASSPOOL_LOOP_INTO .
METHOD SEND_BADI_EVENT_LOOP_INTO_KO2 .

  RAISE EVENT BADI_EVENT_LOOP_INTO_KO2
        EXPORTING I_MESSAGE = SY-SUBRC.
ENDMETHOD.
