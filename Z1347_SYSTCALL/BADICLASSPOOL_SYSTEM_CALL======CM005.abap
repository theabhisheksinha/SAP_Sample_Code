* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
BADI_NAME BADICLASSPOOL_SYSTEM_CALL .
method CLASS_CONSTRUCTOR.
  DATA:  w_c(80)  TYPE c  VALUE 'classpool_sy_uname',
         w_m(80)  TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_ko1',
         incl(80) TYPE c  VALUE 'myinclude'.
            
  SYSTEM-CALL CREATE CLASS w_c.
  
  IF SY-SUBRC = 0. 
  	SYSTEM-CALL CREATE METHOD w_m
  	            OF CLASS w_c  
  	            INCLUDE INTO incl.
  ELSEIF SY-SUBRC = 0.
    SYSTEM-CALL QUERY METHOD w_m
                OF CLASS w_c 
                INCLUDE INTO incl.
  ENDIF.
ENDMETHOD.