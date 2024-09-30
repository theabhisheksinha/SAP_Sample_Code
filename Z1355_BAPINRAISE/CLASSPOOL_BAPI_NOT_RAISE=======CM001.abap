* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
CLASSPOOL_NAME CLASSPOOL_BAPI_NOT_RAISE .
method IF_IFPOOL_BAPI_NOT_RAISE~METH_BAPI_NOT_RAISE_KO1 .

   CALL FUNCTION 'FCT_BAPI_NOT_RAISE_KO1'
        IMPORTING
             BAPIRETURN = SY-SUBRC.

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

endmethod.
