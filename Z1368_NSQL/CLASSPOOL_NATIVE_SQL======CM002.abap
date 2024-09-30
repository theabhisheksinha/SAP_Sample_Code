* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .
CLASSPOOL_NAME CLASSPOOL_NATIVE_SQL .

method IF_IFPOOL_NATIVE_SQL~IF_METH_NATIVE_SQL_KO1.
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

ENDMETHOD.
