* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .

REPORT ZREPORT_SYSTEM_CALL.

********************* events *************************
* SYSTEM-CALL for Save adresses and set fields symbols

DATA ptr TYPE POINTER.
FIELD-SYMBOLS <fs>.

INITIALIZATION.
  SYSTEM-CALL POINTER <fs> TO ptr.
  
START-OF-SELECTION.
  SYSTEM-CALL POINTER <fs> FROM ptr. 

*************** forms *******************
* SYSTEM-CALL for Process internal tables

FORM FRM_SYSTEM_CALL_KO1.
  DATA f  TYPE i.
  
  TYPES: BEGIN OF line,
         col1  TYPE c LENGTH 4,
         col2  TYPE c LENGTH 4,
         END OF line.
         
  DATA:  itab TYPE HASHED TABLE OF line WITH UNIQUE KEY col1.
        
  SYSTEM-CALL ITAB_INFO TABLE itab OPCODE IT-LENGTH VALUE f.
  
ENDFORM.

FORM FRM_SYSTEM_CALL_KO2.
  TYPES: BEGIN OF line,
         col1  TYPE c LENGTH 4,
         col2  TYPE c LENGTH 4,
         END OF line.
         
  TYPES: BEGIN OF line_number,
         numb  TYPE i,
         END OF line_number.
         
  DATA:  itab1 TYPE HASHED TABLE OF line WITH UNIQUE KEY col1.
         itab2 TYPE STANDARD TABLE OF line_number WITH UNIQUE KEY numb.
        
  SYSTEM-CALL ITAB_DELETE_LIST TABLE itab1 INDEX-LIST itab2 USING KEY numb.
  
ENDFORM.

*
* SYSTEM-CALL for CHECK calls

FORM FRM_SYSTEM_CALL_KO3.
  DATA f1     TYPE C VALUE 'Z'.
  DATA f2(80) TYPE C VALUE 'FORM frm_system_call_ko3'.
  DATA f3(5)  TYPE C VALUE 'FRM'. 
  
  SYSTEM-CALL CHECK f1 FOR SEQUENCE OF C FUNCTION f2 PARAMETER f3. 
  
ENDFORM.