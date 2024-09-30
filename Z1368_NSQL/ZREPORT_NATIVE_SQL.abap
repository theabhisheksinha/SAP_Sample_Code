* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .

REPORT ZREPORT_NATIVE_SQL.

********************* events *************************
* Events with Native SQL syntax

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type. 

INITIALIZATION.

   EXEC SQL.
        SELECT au_lname, au_fname
          INTO :col_au_lname, :col_au_fname
          FROM authors
         WHERE au_id = 'AAA'
   ENDEXEC.
   
   IF SY-SUBRC = 0.
     EXIT.
   ELSE
     WRITE: / 'BAD SQL SY-SYBRC', SY-SUBRC.
   ENDIF.

START-OF-SELECTION.
   EXEC SQL PERFORMING FRM_NATIVE_SQL_KO1.
        SELECT au_lname, au_fname
          INTO :col_au_lname, :col_au_fname
          FROM authors
         WHERE au_id IN ('AAA', 'BBB')
   ENDEXEC.
   
   IF SY-SUBRC = 0.
     EXIT.
   ELSE
     WRITE: / 'BAD SQL SY-SYBRC', SY-SUBRC.
   ENDIF.
 
******************* forms ************************
* Forms with cursor Native SQL syntax

FORM FRM_NATIVE_SQL_KO1.

     EXEC SQL
          OPEN c1 FOR
          SELECT au_lname, au_fname FROM authors
           WHERE au_id IN ('AAA', 'BBB')
     ENDEXEC.
     DO.
     EXEC SQL.
          FETCH NEXT c1 INTO :col_au_lname, :col_au_fname 
     ENDEXEC.

     IF SY-SUBRC = 0.
       EXEC SQL.
            UPDATE authors SET au_fname = :col_au_fname
            WHERE  au_id = 'AAA'
       ENDEXEC.
     ENDIF.
          
     IF SY-SUBRC <> 0.
       WRITE: / 'BAD SQL SY-SYBRC', SY-SUBRC.
       EXIT.
     ELSE.
       WRITE: / 'Loop in authors', col_au_lname, col_au_fname .
     ENDIF.
     
     ENDDO.
     
     EXEC SQL.
          CLOSE c1
     ENDEXEC.       
   
ENDFORM.

FORM FRM_NATIVE_SQL_OK1 OUTPUT.

    INSERT authors FROM tab_authors.

    IF SY-SUBRC <> 0.
      WRITE: / 'BAD SQL SY-SYBRC', SY-SUBRC. 

    ELSE.        
      UPDATE authors FROM TABLE tab_authors 
       WHERE au_id = 'AAA'.
     
      IF SY-SUBRC <> 0.
           WRITE: / 'BAD SQL SY-SYBRC', SY-SUBRC. 
      ENDIF.
      
    ENDIF.  
   
ENDFORM. 