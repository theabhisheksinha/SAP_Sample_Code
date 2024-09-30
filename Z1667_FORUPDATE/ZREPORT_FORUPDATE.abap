* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .

REPORT ZREPORT_FORUPDATE.

********************* events *************************
* Events with Open SQL SELECT.... FOR UPDATE

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type. 
            
     DATA: LINE(72) TYPE c,
           i_authors LIKE TABLE OF LINE(72).

INITIALIZATION.

  SELECT SINGLE FOR UPDATE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM ZCR_RESERVATIONS AS au 
   WHERE au~au_id = 'AAA'.

START-OF-SELECTION.
  SELECT SINGLE FOR UPDATE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors      
    FROM ZCR_RESERVATIONS AS au 
   WHERE au~au_id = 'AAA'.                 
 
******************* forms ************************
* Forms with Open SQL SELECT.... FOR UPDATE

FORM FRM_FORUPDATE_KO1.
  SELECT SINGLE FOR UPDATE au~au_lname au~au_fname 
    INTO (col_au_lname, col_au_fname)
    FROM authors AS au 
   WHERE au~au_id = 'AAA'.

ENDFORM.

FORM FRM_FORUPDATE_KO2.
  SELECT SINGLE FOR UPDATE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors   
    FROM ZCR_RESERVATIONS AS au 
   WHERE au~au_id = 'AAA'.         
   
ENDFORM.