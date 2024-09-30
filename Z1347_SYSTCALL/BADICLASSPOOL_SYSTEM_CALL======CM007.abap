* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
BADI_NAME BADICLASSPOOL_SYSTEM_CALL .
METHOD ON_BADI_EVENT_SYSTEM_CALL_KO3 .
  DATA:  w_c(80)  TYPE c  VALUE 'classpool_sy_uname',
         w_m(80)  TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_ko1',
         w_m2(80) TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_kox'.

  SYSTEM-CALL DELETE METHOD w_m2 OF CLASS w_c.         
         
ENDMETHOD.