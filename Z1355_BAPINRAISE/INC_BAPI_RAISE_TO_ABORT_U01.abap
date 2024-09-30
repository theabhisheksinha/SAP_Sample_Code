* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
BEGIN OF FUNCTION PARAMETERS FCT_BAPI_NOT_RAISE_KO1.
EXPORTING VALUE(BAPIRETURN) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BAPI_NOT_RAISE_KO1.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  EXPORTING
*"     VALUE(BAPIRETURN)
*"----------------------------------------------------------------------

    perform BAPI_final_return_message_ko.       "BAPI was not successful
        USING SY-SUBRC
     CHANGING BAPIRETURN.
    
    return.
endfunction.
********* End of function *********************************************

********* Form for writing the final return message *******************

form BAPI_final_return_message_ko.
    USING
       SY-SUBRC    type I
    CHANGING
       BAPIRETURN  type I.

data OREF type ref to CX_ROOT.
data TEXT type STRING.

try.
  try.
    raise exception type CX_DEMO_CONSTRUCTOR
          exporting MY_TEXT = SY-REPID.
    catch CX_DEMO_CONSTRUCTOR into OREF.
      TEXT = OREF->GET_TEXT( ).
      write: / TEXT.
      raise exception OREF.
  endtry.
  catch CX_DEMO_CONSTRUCTOR into OREF.
    TEXT = OREF->GET_TEXT( ).
    write: / TEXT.
endtry.

endform.
********* End of form for final return message ************************
