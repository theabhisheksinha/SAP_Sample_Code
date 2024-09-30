* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK  .

REPORT ZREPORT_SYNTAX_CHECK.

********************* events *************************
* Disabling SYNTAX-CHECK

INITIALIZATION.
  SET EXTENDED CHECK OFF.
  
  WRITE: / 'SYNTAX CHECK DISABLED'.
  
START-OF-SELECTION.
  WRITE: 'excludes error messages regarding the current ABAP command'. "#EC *
  
*************** forms *******************
* Various SYNTAX-CHECK

FORM FRM_SYNTAX_CHECK_KO1.
  WRITE: 'indicates that a string does not have to be stored as a text element'. "#EC NOTEXT
  
ENDFORM.

FORM FRM_SYSTEM_CALL_KO2.
  WRITE 'indicates that a FORM has a PERFORM call'. "#EC CALLED
     
ENDFORM.

FORM FRM_SYSTEM_CALL_KO3.
  WRITE: 'no messages are output about a field that is only read'. "#EC NEEDED
     
ENDFORM.

FORM FRM_SYSTEM_CALL_KO4.
  WRITE: 'specifies that the use of TOUPPER or TOLOWER is also safe in multilingual systems'. "#EC TRANSLANG
               
ENDFORM.

FORM FRM_SYSTEM_CALL_KO5.
  WRITE: 'specifies that the data TOUPPER or TOLOWER is used on contains only characters from the syntactical character set'. "#EC SYNTCHAR
               
ENDFORM.

FORM FRM_SYSTEM_CALL_KO6.
  WRITE: 'no number of arguments is checked while calling of function module'. "#EC ARGCHECKED
                   
ENDFORM.

FORM FRM_SYSTEM_CALL_OK1.
  SET EXTENDED CHECK ON.
  
  WRITE: / 'SYNTAX CHECK ENABLED'.                   
ENDFORM.

FORM FRM_SYSTEM_CALL_OK2.
  SET EXTENDED CHECK OFF.
  WRITE / 'SYNTAX CHECK DISABLED'.
  
  SET EXTENDED CHECK ON.  
  WRITE: / 'SYNTAX CHECK ENABLED'.                   
ENDFORM.

FORM FRM_SYSTEM_CALL_OK3.
  DATA: itab TYPE STANDARD TABLE OF string,
        mess TYPE string,
         lin TYPE i,
         wrd TYPE string,
         dir TYPE trdir. 

  APPEND 'PROGRAM test.'                  TO itab.
  APPEND 'DATA dat TYPE d.'               TO itab.
  APPEND 'DATA len TYPE i.'               TO itab.
  APPEND 'DESCRIBE FIELD dat LENGTH len.' TO itab.  
  
  SYNTAX-CHECK FOR itab MESSAGE mess LINE lin WORD wrd.

  WRITE: / 'SYNTAX CHECK for the content of the internal table itab - small Abap test program'. 
     
ENDFORM.