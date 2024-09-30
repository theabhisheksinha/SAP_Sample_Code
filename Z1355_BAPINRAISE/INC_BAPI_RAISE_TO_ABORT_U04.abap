* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
BEGIN OF FUNCTION PARAMETERS FCT_BAPI_NOT_RAISE_OK1.
EXPORTING VALUE(BAPIRETURN) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BAPI_NOT_RAISE_OK1.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  EXPORTING
*"     VALUE(BAPIRETURN)
*"----------------------------------------------------------------------

    perform BAPI_final_return_message_ok.       "BAPI was not successful but not RAISE EXCEPTION
        USING SY-SUBRC
     CHANGING BAPIRETURN.
    
    return.
endfunction.
********* End of function *********************************************

********* Form for writing the final return message *******************

form BAPI_final_return_message_ok.
    USING
       SY-SUBRC    type I
    CHANGING
       BAPIRETURN  type I.

IF SY-SUBRC <> 0.
  MOVE SY-SUBRC  TO BAPIRETURN.
ENDIF.

endform.
********* End of form for final return message ************************
