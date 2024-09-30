* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1670_SELWHERE .
BADI_NAME BADICLASSPOOL_WITHOUT_WHERE .
method IF_BADI_IFPOOL_WITHOUT_WHERE~IF_BADI_METH_WITHOUT_WHERE_KO1.
  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id).
                          
ENDMETHOD.
