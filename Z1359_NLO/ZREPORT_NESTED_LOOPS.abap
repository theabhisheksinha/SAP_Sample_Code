* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .

REPORT ZREPORT_NESTED_LOOPS.

********************* events *************************

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles       TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE title_type.   
                

INITIALIZATION.
  
  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM authors AS au
   WHERE au~au_id = 'AAA'.
   
     WHILE SY-SUBRC = 0.
         WRITE: / 'SY-SUBRC =', SYSUBRC.
         WHILE SY-SUBRC = 0.
            WRITE: / 'SY-SUBRC =', SYSUBRC.
            DO 3 TIMES.
              WRITE: / 'SY-SUBRC =', SYSUBRC.
            ENDDO.
         ENDWHILE.
     ENDWHILE.                
         
  ENDSELECT.

START-OF-SELECTION.

  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  ENDAT.
  AT LAST.        
     LOOP AT titles.
     AT FIRST.
        WRITE: / 'SY-SUBRC =', SYSUBRC.
     ENDAT.
     AT LAST.
           
        LOOP AT titleauthor.
        AT FIRST.
           WRITE: / 'SY-SUBRC =', SY-SUBRC.
        ENDAT.
        AT LAST.
           WRITE: / 'SY-SUBRC =', SY-SUBRC.
        ENDAT.
        ENDLOOP.
           
     ENDAT.
     ENDLOOP. 
                     
  ENDAT.
  ENDLOOP.    
  
******************* forms ************************

FORM FRM_NESTED_LOOPS_KO3.

  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  
     WHILE SY-SUBRC = 0.       
        
        DO 2 TIMES.
           WRITE: / 'SY-SUBRC=', SY-SUBRC.
        ENDDO. 
        
     ENDWHILE.                
  ENDAT.
  ENDLOOP.    

ENDFORM.

FORM FRM_NESTED_LOOPS_KO4.
  
  WHILE SY-SUBRC = 0.
  
    WHILE SY-SUBRC = 0.       
        
        WHILE SY-SUBRC = 0.
           WRITE: / 'SY-SUBRC=', SY-SUBRC.
        ENDWHILE. 
        
     ENDWHILE.  
                   
  ENDWHILE.                

ENDFORM.

**************************************************
** PROVIDE

FORM FRM_NESTED_LOOPS_KO5.

DATA: flag1(1) TYPE c.

PROVIDE FIELDS * FROM authors INTO tab_authors
                              VALID flag1 
                              BOUNDS 1 AND 6
                 BETWEEN 2 AND 14.
     DO 1 TIMES.
     
       DO 2 TIMES.

         DO 3 TIMES.
           WRITE: / 'SY-SUBRC =', SY-SUBRC.
         ENDDO.

       ENDDO.

     ENDDO.
ENDPROVIDE.
 
ENDFORM.

FORM FRM_NESTED_LOOPS_OK1.

  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM authors AS au
   WHERE au~au_id = 'AAA'.
   
     WHILE SY-SUBRC = 0.
         WRITE: / 'SY-SUBRC =', SY-SUBRC.
         WHILE SY-SUBRC = 0.
            WRITE: / 'SY-SUBRC =', SY-SUBRC.
         ENDWHILE.
     ENDWHILE.                
         
  ENDSELECT.
  
ENDFORM.

FORM FRM_NESTED_LOOPS_OK2.

  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  ENDAT.
  AT LAST.        
     LOOP AT titles.
     AT FIRST.
        WRITE: / 'SY-SUBRC =', SYSUBRC.
     ENDAT.

     ENDLOOP. 
                          
  ENDAT.
  ENDLOOP.    
  
ENDFORM.

FORM FRM_NESTED_LOOPS_OK3.

  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  
     WHILE SY-SUBRC = 0.          
        WRITE: / 'SY-SUBRC=', SY-SUBRC.
        
     ENDWHILE.                
  ENDAT.
  ENDLOOP.    

ENDFORM.

FORM FRM_NESTED_LOOPS_OK4.
  
  WHILE SY-SUBRC = 0.
  
    WHILE SY-SUBRC = 0.       
       WRITE: / 'SY-SUBRC=', SY-SUBRC.        
     ENDWHILE.  
                   
  ENDWHILE.                

ENDFORM.

FORM FRM_NESTED_LOOPS_OK5.

DATA: flag1(1) TYPE c.

PROVIDE FIELDS * FROM authors INTO tab_authors
                              VALID flag1 
                              BOUNDS 1 AND 6
                 BETWEEN 2 AND 14.
     DO 1 TIMES.
     
       DO 2 TIMES.
        WRITE: / 'SY-SUBRC =', SY-SUBRC.
       ENDDO.

     ENDDO.
ENDPROVIDE.
 
ENDFORM.
