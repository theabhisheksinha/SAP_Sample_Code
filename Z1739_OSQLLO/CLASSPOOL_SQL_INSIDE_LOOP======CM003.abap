* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
CLASSPOOL_NAME CLASSPOOL_SQL_INSIDE_LOOP .

method CONSTRUCTOR.
  WHILE SY-SUBRC = 0.
    UPDATE ZRESERVATIONS
       SET au_lname = col_au_lname
     WHERE au_id = 'AAA'.
  ENDWHILE.         
  
ENDMETHOD.
