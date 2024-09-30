* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
BADI_NAME BADICLASSPOOL_SQL_INSIDE_LOOP .
method IF_BADI_IFPOOL_SQL_INSIDE_LOOP~IF_BADI_METH_SQL_INSIDE_LOOP_KO1.
  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM authors AS au
   WHERE au~au_id = 'AAA'.
   
         SELECT ti~title
           INTO (col_title)  
           FROM titles AS ti.
         ENDSELECT.
         
  ENDSELECT.

ENDMETHOD.
