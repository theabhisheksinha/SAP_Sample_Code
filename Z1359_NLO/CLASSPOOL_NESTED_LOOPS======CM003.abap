* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
CLASSPOOL_NAME CLASSPOOL_NESTED_LOOPS .
method CONSTRUCTOR.
  WHILE SY-SUBRC = 0.
  
    WHILE SY-SUBRC = 0.       
        
        WHILE SY-SUBRC = 0.
           WRITE: / 'SY-SUBRC=', SY-SUBRC.
        ENDWHILE. 
        
     ENDWHILE.  
                   
  ENDWHILE.          
  
ENDMETHOD.
