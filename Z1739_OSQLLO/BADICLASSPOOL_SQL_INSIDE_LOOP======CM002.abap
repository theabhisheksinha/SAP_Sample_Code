* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
BADI_NAME BADICLASSPOOL_SQL_INSIDE_LOOP .
method CLASS_CONSTRUCTOR.       
  LOOP AT authors.
     INSERT authors
       FROM tab_authors.
  ENDLOOP.        
   
ENDMETHOD.
  