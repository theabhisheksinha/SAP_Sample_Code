* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
CLASSPOOL_NAME CLASSPOOL_SYNTAX_CHECK .

method IF_IFPOOL_SYNTAX_CHECK~IF_METH_SYNTAX_CHECK_KO2.
  WRITE: 'indicates that a string does not have to be stored as a text element'. "#EC NOTEXT
  
ENDMETHOD.
