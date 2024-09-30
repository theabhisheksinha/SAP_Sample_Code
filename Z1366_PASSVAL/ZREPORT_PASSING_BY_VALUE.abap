* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1366_PASSVAL .

REPORT ZREPORT_PASSING_BY_VALUE.

********************* events *************************
* Events calling Forms 

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY, 
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           tab_titleauthor TYPE titleauthor_type. 

     DATA: BEGIN OF struct_line,
            struct_col1(1) TYPE c,
            struct_col2(1) TYPE c,
            struct_col3(1) TYPE c,
            struct_col4(1) TYPE c,
            struct_col5(1) TYPE c,
          END OF struct_line.
     DATA: line(5) TYPE c,
           w_count TYPE i,
           frm_name(72) TYPE C. 

INITIALIZATION.

  PERFORM FRM_PASSING_BY_VALUE_KO1 USING    tab_authors  w_count.
  
  PERFORM FRM_PASSING_BY_VALUE_KO2 USING    tab_authors  w_count.

  MOVE 'au_id'  TO line. 
  PERFORM FRM_PASSING_BY_VALUE_KO3 USING    tab_authors. 
  
  PERFORM FRM_PASSING_BY_VALUE_KO4 USING    line.
 
  MOVE 'FRM_PASSING_BY_VALUE_KO5'  TO frm_name.
  PERFORM (frm_name) TABLES tab_titleauthor USING tab_authors.
* PERFORM FRM_PASSING_BY_VALUE_KO5 TABLES tab_titleauthor USING tab_authors.

START-OF-SELECTION.

  PERFORM FRM_PASSING_BY_VALUE_OK1 USING    tab_authors  w_count.
  
  PERFORM FRM_PASSING_BY_VALUE_OK2 USING    tab_authors  w_count.

  MOVE 'au_id'  TO line. 
  PERFORM FRM_PASSING_BY_VALUE_OK3 USING    tab_authors. 
  
  PERFORM FRM_PASSING_BY_VALUE_OK4 USING    line.
 
  MOVE 'FRM_PASSING_BY_VALUE_OK5'  TO frm_name.
* PERFORM (frm_name) TABLES tab_titleauthor CHANGING tab_authors.
  PERFORM FRM_PASSING_BY_VALUE_OK5 TABLES tab_titleauthor CHANGING tab_authors.
  
******************* forms ***************************
* Forms with parameters passed BY VALUE

FORM FRM_PASSING_BY_VALUE_KO1 USING VALUE(p1) TYPE authors_type
                                    VALUE(p2) LIKE w_count.
  WRITE: / 'PARAM1=', p1, 'PARAM2=', p2. 
ENDFORM.


FORM FRM_PASSING_BY_VALUE_KO2 USING    VALUE(p1) TYPE authors_type
                                       VALUE(p2) LIKE w_count.
  WRITE: / 'PARAM1=', p1, 'PARAM2=', p2. 
ENDFORM.


FORM FRM_PASSING_BY_VALUE_KO3 USING VALUE(p)    TYPE ANY TABLE.

  DATA tab_authors    TYPE authors_type.
  
  READ TABLE p WITH TABLE KEY (line) = 'AAAAA' INTO tab_authors.
  WRITE: / 'PARAM=', tab_authors.

ENDFORM.

FORM FRM_PASSING_BY_VALUE_KO4  USING VALUE(p) STRUCTURE line.

  WRITE: / 'PARAM=', p, 'struct_col1=', struct_col1, 'struct_col2=', struct_col2.
  
ENDFORM.

FORM FRM_PASSING_BY_VALUE_KO5  TABLES t TYPE titleauthor_type USING VALUE(p) TYPE authors_type.

  WRITE: / 'TABLES=', t, 'PARAM=', p.
ENDFORM.

******************* forms ***************************
* Forms with parameters passed BY REFERENCE

FORM FRM_PASSING_BY_VALUE_OK1 USING p1 TYPE authors_type
                                    p2 LIKE w_count.
  WRITE: / 'PARAM1=', p1, 'PARAM2=', p2. 
ENDFORM.


FORM FRM_PASSING_BY_VALUE_OK2 USING    p1 TYPE authors_type
                                       p2 LIKE w_count.
  WRITE: / 'PARAM1=', p1, 'PARAM2=', p2. 
ENDFORM.


FORM FRM_PASSING_BY_VALUE_OK3 USING p    TYPE ANY TABLE.

  DATA tab_authors    TYPE authors_type.
  
  READ TABLE p WITH TABLE KEY (line) = 'AAAAA' INTO tab_authors.
  WRITE: / 'PARAM=', tab_authors.

ENDFORM.

FORM FRM_PASSING_BY_VALUE_OK4  USING p STRUCTURE line.

  WRITE: / 'PARAM=', p, 'struct_col1=', struct_col1, 'struct_col2=', struct_col2.
  
ENDFORM.

FORM FRM_PASSING_BY_VALUE_OK5  TABLES t TYPE titleauthor_type CHANGING p TYPE authors_type.

  WRITE: / 'TABLES=', t, 'PARAM=', p.
ENDFORM.

