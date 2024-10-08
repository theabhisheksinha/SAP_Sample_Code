* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1669_NULLWHERE .
CLASSPOOL_NAME CLASSPOOL_WHERE_NULL .

method IF_IFPOOL_WHERE_NULL~IF_METH_WHERE_NULL_KO1.
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM ZCR_RESERVATIONS AS au
   WHERE au~au_id IS NOT NULL.

ENDMETHOD.
