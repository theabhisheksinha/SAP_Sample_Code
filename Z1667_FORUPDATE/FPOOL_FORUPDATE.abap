* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
FUNCTION-POOL FPOOL_FORUPDATE .

BEGIN OF FUNCTION PARAMETERS FCT_FORUPDATE_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_FORUPDATE_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type. 
            
     DATA: LINE(72) TYPE c,
           i_authors LIKE TABLE OF LINE(72).

  SELECT SINGLE FOR UPDATE au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM ZUSV AS au 
   WHERE au~au_id = 'AAA'.

ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_FORUPDATE_KO2.
EXPORTING SY-SUBRC .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_FORUPDATE_KO2.
*"----------------------------------------------------------
*" Local interface:
*" EXPORTING
*" SY-SUBRC
*"----------------------------------------------------------
		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type. 
            
     DATA: LINE(72) TYPE c,
           i_authors LIKE TABLE OF LINE(72).
           
  SELECT SINGLE FOR UPDATE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors      
    FROM ZUSV AS au 
   WHERE au~au_id = 'AAA'.         

ENDFUNCTION.
