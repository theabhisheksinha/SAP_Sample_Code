* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
FUNCTION-POOL FPOOL_WHERE_NOT .

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO1.
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
                
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM ZUSV AS au
   WHERE au~au_id NOT BETWEEN 'AAA' AND 'BBB'.

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO2.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  NOT IN (SELECT ta~au_id 
                             FROM titleauthor AS ta
                            WHERE ta~title_id = 'ZZZ').  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO3.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO3.
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
    INTO (col_au_lname, col_au_fname)  
    FROM ZRESERVATIONS AS au
   WHERE au~au_id NOT LIKE '%AAA'.  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO4.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO4.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  IN (SELECT ta~au_id 
                        FROM titleauthor AS ta
                       WHERE NOT ta~au_id = 'BBB' AND ta~title_id = 'ZZZ').  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO5.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO5.
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
                
  SELECT SINGLE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE NOT au~au_id BETWEEN 'AAA' AND 'BBB'.

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO6.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO6.
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
    INTO (col_au_lname, col_au_fname)  
    FROM ZRESERVATIONS AS au
   WHERE NOT au~au_id  IN (SELECT ta~au_id 
                             FROM titleauthor AS ta
                            WHERE ta~title_id = 'ZZZ').  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO7.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO7.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE NOT au~au_id LIKE '%AAA'.  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO8.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO8.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE NOT au~au_id  IN (SELECT ta~au_id 
                             FROM titleauthor AS ta
                            WHERE ta~au_id = 'BBB' AND ta~title_id = 'ZZZ').  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO9.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO9.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  IN (SELECT ta~au_id 
                         FROM titleauthor AS ta
                        WHERE ta~au_id = 'BBB' AND NOT ta~title_id = 'ZZZ').  

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_WHERE_NOT_KO10.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_WHERE_NOT_KO10.
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
    INTO (col_au_lname, col_au_fname)  
    FROM authors AS au
   WHERE au~au_id  IN (SELECT ta~au_id 
                         FROM titleauthor AS ta
                        WHERE NOT (ta~au_id = 'BBB' OR ta~title_id = 'ZZZ') ).  

ENDFUNCTION.