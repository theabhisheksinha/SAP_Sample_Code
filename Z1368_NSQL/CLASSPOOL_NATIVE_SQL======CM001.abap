* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .
CLASSPOOL_NAME CLASSPOOL_NATIVE_SQL .

method IF_IFPOOL_NATIVE_SQL~IF_METH_NATIVE_SQL_KO2.
     EXEC SQL
          OPEN c1 FOR
          SELECT au_lname, au_fname FROM authors
           WHERE au_id = 'AAA'
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

ENDMETHOD.     