* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
BADI_NAME BADICLASSPOOL_BYPASSINGBUFFER .

METHOD ON_BADI_EVENT_BYPASSINGBUFFER_KO2 .
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM authors AS au
    BYPASSING BUFFER 
   WHERE au~au_id  IN (SELECT ta~au_id 
                         FROM titleauthor AS ta
                        WHERE ta~title_id = 'ZZZ').
ENDMETHOD.
