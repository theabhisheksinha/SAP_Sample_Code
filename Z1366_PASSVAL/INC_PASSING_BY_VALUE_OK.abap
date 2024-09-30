* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1366_PASSVAL .

INCLUDE_NAME INC_PASSING_BY_VALUE_OK.


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

FORM FRM_PASSING_BY_VALUE_OK1  USING p STRUCTURE line.

  WRITE: / 'PARAM=', p, 'struct_col1=', struct_col1, 'struct_col2=', struct_col2.

ENDFORM.
           
FORM FRM_PASSING_BY_VALUE_OK2  TABLES t TYPE titleauthor_type CHANGING p TYPE authors_type.

  WRITE: / 'TABLES=', t, 'PARAM=', p.
ENDFORM.
