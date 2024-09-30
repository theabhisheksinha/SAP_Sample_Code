* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
CLASSPOOL_NAME CLASSPOOL_FORUPDATE .

method CONSTRUCTOR.
  SELECT SINGLE FOR UPDATE (i_authors)
    INTO CORRESPONDING FIELDS OF tab_authors      
    FROM authors AS au 
   WHERE au~au_id = 'AAA'.   
   
ENDMETHOD.
