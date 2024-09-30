* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
BEGIN OF FUNCTION PARAMETERS FCT_BAPI_NOT_RAISE_KO2.
EXPORTING VALUE(BAPIRETURN) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BAPI_NOT_RAISE_KO2.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  EXPORTING
*"     VALUE(RETURN)
*"----------------------------------------------------------------------

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

endfunction.
*********** End of function *******************************************