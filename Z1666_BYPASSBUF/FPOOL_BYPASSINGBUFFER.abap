* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
FUNCTION-POOL FPOOL_BYPASSINGBUFFER .

BEGIN OF FUNCTION PARAMETERS FCT_BYPASSINGBUFFER_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BYPASSINGBUFFER_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
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
                
  SELECT SINGLE au~au_lname au~au_fname ti~title
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM ( (authors AS au INNER JOIN titleauthor AS ta ON au~au_id = ta~au_id)
                          INNER JOIN titles      AS ti ON ta~title_id = ti~title_id)
    BYPASSING BUFFER
   WHERE au~au_id = 'AAA'.

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_BYPASSINGBUFFER_KO2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_BYPASSINGBUFFER_KO2.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
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
                
  SELECT SINGLE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname, col_title)  
    FROM authors AS au
    BYPASSING BUFFER 
   WHERE au~au_id  IN (SELECT ta~au_id 
                         FROM titleauthor AS ta
                        WHERE ta~title_id = 'ZZZ').  

ENDFUNCTION.
