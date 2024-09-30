* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
CLASSPOOL_NAME CLASSPOOL_FORUPDATE .

method IF_IFPOOL_FORUPDATE~IF_METH_FORUPDATE_KO1.
  SELECT SINGLE FOR UPDATE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM ZACCOUNTS AS au 
   WHERE au~au_id = 'AAA'.

ENDMETHOD.
