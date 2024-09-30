* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1357_WDPSFNRAISE .
CLASSPOOL_NAME CLASSPOOL_SUPPLFNC_NOT_RAISE .
method IWCI_WD_SUPPLFNC_NOT_RAISE~METH_WD_NOT_RAISE_KO2 .

		TYPES: accounts_type    TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.

    DATA:  tab_accounts    TYPE accounts_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type.
             
* read authors
  select * from ZACCOUNTS
    into corresponding fields of table tab_accounts
    where au_fname = 'AZERTYIOP'
      and au_lname = 'QSDFGHJKLM'.
  endselect.

  if SY-SUBRC <> 0.
    try.
      try.
          raise exception type CX_DEMO_CONSTRUCTOR
                exporting MY_TEXT = SY-REPID.
     catch CX_DEMO_CONSTRUCTOR into OREF.
           TEXT = OREF->GET_TEXT( ).
           write: / TEXT.
     raise exception OREF.
     endtry.
   catch CX_DEMO_CONSTRUCTOR into OREF.
    TEXT = OREF->GET_TEXT( ).
    write: / TEXT.
   endtry.
  	
  endif.

endmethod.
