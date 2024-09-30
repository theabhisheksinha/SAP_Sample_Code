* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
BEGIN OF FUNCTION PARAMETERS FCT_BAPI_NOT_RAISE_OK2.
EXPORTING VALUE(BAPIRETURN) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BAPI_NOT_RAISE_OK2.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  EXPORTING
*"     VALUE(RETURN)
*"----------------------------------------------------------------------

IF SY-SUBRC <> 0.
  MOVE SY-SUBRC  TO BAPIRETURN.
ENDIF.

endfunction.
*********** End of function *******************************************