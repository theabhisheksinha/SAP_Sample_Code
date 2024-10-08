* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1670_SELWHERE .

REPORT ZREPORT_WITHOUT_WHERE.

********************* events *************************
* Events with Open SQL SELECT.... with WHERE clause

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

     DATA: LINE(72) TYPE c,
           i_authors LIKE TABLE OF LINE(72),
           w_count  TYPE i. 

INITIALIZATION.

  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id).

START-OF-SELECTION.
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM ZUSV AS au.
  
******************* forms ***************************
* Forms with Open SQL SELECT.... without WHERE clause

FORM FRM_WITHOUT_WHERE_KO1.
  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id).
   
ENDFORM.

FORM FRM_WITHOUT_WHERE_KO2.
  SELECT SINGLE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors   
    FROM authors AS au.
                                 
ENDFORM.

FORM FRM_WITHOUT_WHERE_KO3.
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au.

ENDFORM.

******************* forms ***************************
* Forms with Open SQL SELECT.... with WHERE clause

FORM FRM_WITHOUT_WHERE_OK1.
  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id)
   WHERE au~au_id = 'AAA'.
         
ENDFORM.

FORM FRM_WITHOUT_WHERE_OK2.  
  SELECT SINGLE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors   
    FROM authors AS au
   WHERE au~au_id = 'AAA'. 
   
ENDFORM.

FORM FRM_WITHOUT_WHERE_OK3.
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM ZUSV AS au
   WHERE au~au_id  IN (SELECT ta~au_id 
                         FROM titleauthor AS ta
                        WHERE ta~title_id = 'ZZZ').

ENDFORM.
