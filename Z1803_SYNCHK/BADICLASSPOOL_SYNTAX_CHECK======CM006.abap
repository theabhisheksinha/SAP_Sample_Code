* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
BADI_NAME BADICLASSPOOL_SYNTAX_CHECK .

method IF_BADI_IFPOOL_SYNTAX_CHECK~IF_BADI_METH_SYNTAX_CHECK_KO2.
  WRITE: 'indicates that a string does not have to be stored as a text element'. "#EC NOTEXT

ENDMETHOD.
