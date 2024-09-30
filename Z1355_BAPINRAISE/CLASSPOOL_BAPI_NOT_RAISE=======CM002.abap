* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
CLASSPOOL_NAME CLASSPOOL_BAPI_NOT_RAISE .

method IF_IFPOOL_BAPI_NOT_RAISE~METH_BAPI_NOT_RAISE_OK1 .

   CALL FUNCTION 'FCT_BAPI_NOT_RAISE_OK1'  
        IMPORTING
             BAPIRETURN = SY-SUBRC. "BAPI was not successful but not RAISE EXCEPTION

  IF SY-SUBRC <> 0.
    MOVE SY-SUBRC  TO BAPIRETURN.
  ENDIF.


endmethod.
