* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
BADI_NAME BADICLASSPOOL_LOOP_INTO .
method IF_BADI_IFPOOL_LOOP_INTO~IF_BADI_METH_LOOP_INTO_KO1.
  LOOP AT tab_titles 
       INTO line_titles
      WHERE tab_titles-title_id CO 'BBB'.
  ENDLOOP.  

ENDMETHOD.
