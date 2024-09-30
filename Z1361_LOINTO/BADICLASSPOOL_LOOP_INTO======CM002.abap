* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
BADI_NAME BADICLASSPOOL_LOOP_INTO .
method CLASS_CONSTRUCTOR.       
  LOOP AT tab_titles 
       INTO line_titles
      WHERE tab_titles-title_id CO 'BBB'.
  ENDLOOP.        
   
ENDMETHOD.
  