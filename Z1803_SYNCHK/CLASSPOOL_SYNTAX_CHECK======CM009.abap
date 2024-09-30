* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
CLASSPOOL_NAME CLASSPOOL_SYNTAX_CHECK .

METHOD ON_EVENT_SYNTAX_CHECK_KO3 .
  WRITE: 'specifies that the data TOUPPER or TOLOWER is used on contains only characters from the syntactical character set'. "#EC SYNTCHAR
     
ENDMETHOD.
