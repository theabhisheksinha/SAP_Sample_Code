* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1669_NULLWHERE .

REPORT ZREPORT_WHERE_NULL.

********************* events ***************
* Events with Open SQL SELECT.... WHERE NULL

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors,
		       title_type       TYPE title-titles. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE title_type.   
                

INITIALIZATION.

  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id IS NOT NULL.

START-OF-SELECTION.
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  NOT IN (SELECT ta~au_id 
                             FROM titleauthor AS ta
                            WHERE ta~title_id IS NOT NULL).                    

  
******************* forms *****************
* Forms with Open SQL SELECT.... WHERE NULL

FORM FRM_WHERE_NULL_KO1.
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id IS NULL OR au~au_lname IS NOT NULL.

ENDFORM.

FORM FRM_WHERE_NULL_KO2.
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  NOT IN (SELECT ta~au_id 
                             FROM titleauthor AS ta
                            WHERE ta~title_id = 'ZZZ' AND ta~au_id IS NOT NULL).                

ENDFORM.