* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
CLASSPOOL_NAME CLASSPOOL_SYSTEM_CALL .
method IF_IFPOOL_SYSTEM_CALL~IF_METH_SYSTEM_CALL_KO1.
  DATA:  w_c(80)  TYPE c  VALUE 'classpool_sy_uname',
         w_m(80)  TYPE c  VALUE 'if_ifpool_system_call~if_meth_system_call_ko1'
         incl(80) TYPE c  VALUE 'myinclude'.
         
  SYSTEM-CALL QUERY METHOD w_m INCLUDE FROM incl 
                    CLASS  INTO w_c 
                    METHOD INTO w_m.

ENDMETHOD.
