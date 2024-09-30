* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .

REPORT ZREPORT_SQL_INSIDE_LOOP.

********************* events *************************

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
                

INITIALIZATION.
  
  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM ZRESERVATIONS AS au
   WHERE au~au_id = 'AAA'.
   
         SELECT ti~title
           INTO (col_title)  
           FROM titles AS ti.
         ENDSELECT.
         
  ENDSELECT.

START-OF-SELECTION.

  SELECT FOR UPDATE au~au_lname au~au_fname
    FROM authors AS au
   WHERE au~au_id  = 'AAA'.
  
   UPDATE authors.
   
  ENDSELECT.                    

  
******************* forms ************************
** LOOP

FORM FRM_SQL_INSIDE_LOOP_KO3.

  LOOP AT authors.
     SELECT SINGLE au~au_lname au~au_fname
       INTO (col_au_lname, col_au_fname)  
       FROM authors AS au
      WHERE au~au_id = 'AAA'.
  ENDLOOP.

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO4.
  LOOP AT authors.
     INSERT authors
       FROM tab_authors.
  ENDLOOP.                  

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO5.
  LOOP AT authors.
    UPDATE authors
       SET au_lname = col_au_lname
     WHERE au_id = 'AAA'.
  ENDLOOP.                  

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO6.
  LOOP AT authors.
     DELETE authors
      WHERE au_id = 'AAA'.
  ENDLOOP.                  

ENDFORM.

**************************************************
** WHILE

FORM FRM_SQL_INSIDE_LOOP_KO7.
  LOOP AT authors.
    WHILE SY-SUBRC = 0.
     SELECT SINGLE au~au_lname au~au_fname
       INTO (col_au_lname, col_au_fname)  
       FROM authors AS au
      WHERE au~au_id = 'AAA'.
    ENDWHILE.
  ENDLOOP.
  
ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO8.
  WHILE SY-SUBRC = 0.
     INSERT authors
       FROM tab_authors.
  ENDWHILE.                 

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO9.
  WHILE SY-SUBRC = 0.
    UPDATE authors
       SET au_lname = col_au_lname
     WHERE au_id = 'AAA'.
  ENDWHILE.                  

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO10.
  WHILE SY-SUBRC = 0.
     DELETE authors
      WHERE au_id = 'AAA'.
  ENDWHILE.                   

ENDFORM.

**************************************************
** DO

FORM FRM_SQL_INSIDE_LOOP_KO11.
  WHILE SY-SUBRC = 0.
    DO 4 TIMES.
     SELECT SINGLE au~au_lname au~au_fname
       INTO (col_au_lname, col_au_fname)  
       FROM authors AS au
      WHERE au~au_id = 'AAA'.
    ENDDO.
  ENDWHILE.
  
ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO12.
  DO 4 TIMES.
     INSERT authors
       FROM tab_authors.
  ENDDO.               

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO13.
  DO 4 TIMES.
    UPDATE ZRESERVATIONS
       SET au_lname = col_au_lname
     WHERE au_id = 'AAA'.
  ENDDO.                  

ENDFORM.

FORM FRM_SQL_INSIDE_LOOP_KO14.
  DO 4 TIMES.
     DELETE authors
      WHERE au_id = 'AAA'.
  ENDDO.                  

ENDFORM.

**************************************************
** PROVIDE

FORM FRM_SQL_INSIDE_LOOP_KO15.

DATA: flag1(1) TYPE c.

PROVIDE FIELDS * FROM authors INTO tab_authors
                              VALID flag1 
                              BOUNDS 1 AND 6
                 BETWEEN 2 AND 14.
ENDPROVIDE.
 
ENDFORM.
