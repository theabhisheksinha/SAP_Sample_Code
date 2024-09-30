* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1670_SELWHERE .
USER_EXIT_NAME ZX001_WITHOUT_WHERE .

MODULE MOD_WITHOUT_WHERE_KO1 OUTPUT.
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
                
  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id).
   
ENDMODULE. 

MODULE MOD_WITHOUT_WHERE_KO2 OUTPUT.
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
                
  SELECT SINGLE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors   
    FROM authors AS au.
    
ENDMODULE. 

MODULE MOD_WITHOUT_WHERE_KO3 OUTPUT.
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

  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au.
    
ENDMODULE.
  