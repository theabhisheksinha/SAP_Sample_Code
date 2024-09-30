* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
CLASSPOOL_NAME CLASSPOOL_WHERE_NOT .

METHOD ON_EVENT_WHERE_NOT_KO3 .
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  IN (SELECT ta~au_id 
                        FROM titleauthor AS ta
                       WHERE NOT ta~au_id = 'BBB' AND ta~title_id = 'ZZZ').
                       
ENDMETHOD.