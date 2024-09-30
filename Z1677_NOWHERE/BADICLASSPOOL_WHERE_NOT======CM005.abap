* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
BADI_NAME BADICLASSPOOL_WHERE_NOT .

METHOD ON_BADI_EVENT_WHERE_NOT_KO2 .
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id NOT LIKE '%AAA'.
   
ENDMETHOD.