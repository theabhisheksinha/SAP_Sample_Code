* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
CLASSPOOL_NAME CLASSPOOL_BYPASSINGBUFFER .
METHOD SEND_EVENT_BYPASSINGBUFFER_KO2.

  RAISE EVENT EVENT_BYPASSINGBUFFER_KO2
        EXPORTING I_MESSAGE = SY-SUBRC.
ENDMETHOD.
