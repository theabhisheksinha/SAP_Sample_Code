* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
FUNCTION-POOL FPOOL_LOOP_INTO .

BEGIN OF FUNCTION PARAMETERS FCT_LOOP_INTO_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_LOOP_INTO_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE titles_type.   
                
    FIELD-SYMBOLS <line_authors> LIKE LINE OF tab_authors.
    DATA   line_titles           LIKE LINE OF tab_titles. 
    
  LOOP AT tab_titles 
       INTO line_titles
      WHERE tab_titles-title_id CO 'BBB'.
  ENDLOOP. 
   
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_LOOP_INTO_KO2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_LOOP_INTO_KO2.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE titles_type.   
                
    FIELD-SYMBOLS <line_authors> LIKE LINE OF tab_authors.
    DATA   line_titles           LIKE LINE OF tab_titles. 
                  
   LOOP AT tab_titles 
        INTO line_titles.
        AT FIRST.
        WRITE: / 'FIRST'.
        ENDAT.
        AT LAST.
        WRITE: / 'END'.
        ENDAT.
  ENDLOOP.   

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_LOOP_INTO_KO3.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_LOOP_INTO_KO3.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE titles_type.   
                
    FIELD-SYMBOLS <line_authors> LIKE LINE OF tab_authors.
    DATA   line_titles           LIKE LINE OF tab_titles. 
                
  LOOP AT tab_authors ASSIGNING <line_authors>
                  WHERE tab_authors-au_id CP 'AAA*'.
                  
       LOOP AT tab_titles INTO line_titles
                  WHERE tab_titles-au_id =  <line_authors>-au_id. 
       ENDLOOP.        
  ENDLOOP.  

ENDFUNCTION.
     
BEGIN OF FUNCTION PARAMETERS FCT_LOOP_INTO_OK1.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_LOOP_INTO_OK1.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE titles_type.   
                
    FIELD-SYMBOLS <line_authors> LIKE LINE OF tab_authors.
    DATA   line_titles           LIKE LINE OF tab_titles. 
                    
  LOOP AT tab_authors ASSIGNING <line_authors>
                  WHERE tab_authors-au_id CP 'AAA*'.
  ENDLOOP.    
  
ENDFUNCTION.