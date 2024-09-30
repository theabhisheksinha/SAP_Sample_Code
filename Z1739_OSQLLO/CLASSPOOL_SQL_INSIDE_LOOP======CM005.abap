* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
CLASSPOOL_NAME CLASSPOOL_SQL_INSIDE_LOOP .

METHOD ON_EVENT_SQL_INSIDE_LOOP_KO2 .
  SELECT FOR UPDATE au~au_lname au~au_fname
    FROM authors AS au
   WHERE au~au_id  = 'AAA'.
  
   UPDATE authors.
   
  ENDSELECT.  
ENDMETHOD.
