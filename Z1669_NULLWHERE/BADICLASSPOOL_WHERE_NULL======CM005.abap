* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1669_NULLWHERE .
BADI_NAME BADICLASSPOOL_WHERE_NULL .

METHOD ON_BADI_EVENT_WHERE_NULL_KO2 .
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id IS NULL OR au~au_lname IS NOT NULL.
   
ENDMETHOD.