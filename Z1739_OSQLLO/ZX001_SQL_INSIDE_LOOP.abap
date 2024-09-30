* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .

USER_EXIT_NAME ZX001_SQL_INSIDE_LOOP .

MODULE MOD_SQL_INSIDE_LOOP_KO1 OUTPUT.
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
           col_title       TYPE title_type.  
                
  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM ZSPFLISFLIGHT AS au
   WHERE au~au_id = 'AAA'.
   
         SELECT ti~title
           INTO (col_title)  
           FROM titles AS ti.
         ENDSELECT.
         
  ENDSELECT.
   
ENDMODULE. 

MODULE MOD_SQL_INSIDE_LOOP_KO2 OUTPUT.
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
           col_title       TYPE title_type.  
                
  SELECT FOR UPDATE au~au_lname au~au_fname
    FROM authors AS au
   WHERE au~au_id  = 'AAA'.
  
   UPDATE authors.
   
  ENDSELECT.   
  
ENDMODULE. 

MODULE MOD_SQL_INSIDE_LOOP_KO4 OUTPUT.
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
           col_title       TYPE title_type.  
          
  LOOP AT authors.
     INSERT authors
       FROM tab_authors.
  ENDLOOP.                  

ENDMODULE.

MODULE MOD_SQL_INSIDE_LOOP_KO9 OUTPUT.
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
           col_title       TYPE title_type.  
          
  WHILE SY-SUBRC = 0.
    UPDATE ZSPFLISFLIGHT
       SET au_lname = col_au_lname
     WHERE au_id = 'AAA'.
  ENDWHILE.                                 

ENDMODULE.

MODULE MOD_SQL_INSIDE_LOOP_KO14 OUTPUT.
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
           col_title       TYPE title_type.  
            
  DO 4 TIMES.
     DELETE authors
      WHERE au_id = 'AAA'.
  ENDDO.                  

ENDMODULE.

MODULE MOD_SQL_INSIDE_LOOP_KO15 OUTPUT.
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
           col_title       TYPE title_type.  

   DATA: flag1(1) TYPE c.

PROVIDE FIELDS * FROM authors INTO tab_authors
                              VALID flag1 
                              BOUNDS 1 AND 6
                 BETWEEN 2 AND 14.
ENDPROVIDE.

ENDMODULE.            