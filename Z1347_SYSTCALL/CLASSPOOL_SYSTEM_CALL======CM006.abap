* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
CLASSPOOL_NAME CLASSPOOL_SYSTEM_CALL .

METHOD ON_EVENT_SYSTEM_CALL_KO2 .
  DATA:  w_c(80)  TYPE c  VALUE 'classpool_sy_uname',
         w_m(80)  TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_ko1',
         w_m2(80) TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_kox'.
         
  SYSTEM-CALL RENAME METHOD w_m OF CLASS w_c NEW NAME FROM w_m2.         
            
ENDMETHOD.
