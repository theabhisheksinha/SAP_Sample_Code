* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
USER_EXIT_NAME ZX001_SYNTAX_CHECK .

MODULE MOD_SYNTAX_CHECK_KO1 OUTPUT.
  SET EXTENDED CHECK OFF.
  
  WRITE: / 'SYNTAX CHECK DISABLED'.
   
ENDMODULE. 

MODULE MOD_SYNTAX_CHECK_KO2 OUTPUT.
  WRITE: 'excludes error messages regarding the current ABAP command'. "#EC *
     
ENDMODULE. 

MODULE MOD_SYNTAX_CHECK_KO3 OUTPUT.
  WRITE: 'indicates that a string does not have to be stored as a text element'. "#EC NOTEXT
     
ENDMODULE. 

MODULE MOD_SYNTAX_CHECK_KO4 OUTPUT.
  WRITE: 'indicates that a FORM has a PERFORM call'. "#EC CALLED
     
ENDMODULE.  

MODULE MOD_SYNTAX_CHECK_KO5 OUTPUT.
  WRITE: 'no messages are output about a field that is only read'. "#EC NEEDED
     
ENDMODULE.  

MODULE MOD_SYNTAX_CHECK_KO6 OUTPUT.
  WRITE: 'no messages are sent at BREAK-POINTs'. "#EC NOBREAK
     
ENDMODULE.  

MODULE MOD_SYNTAX_CHECK_KO7 OUTPUT.
  WRITE: 'specifies that the use of TOUPPER or TOLOWER is also safe in multilingual systems'. "#EC TRANSLANG
     
ENDMODULE. 

MODULE MOD_SYNTAX_CHECK_KO8 OUTPUT.
  WRITE: 'specifies that the data TOUPPER or TOLOWER is used on contains only characters from the syntactical character set'. "#EC SYNTCHAR
     
ENDMODULE.  

MODULE MOD_SYNTAX_CHECK_KO9 OUTPUT.
  WRITE: 'no number of arguments is checked while calling of function module'. "#EC ARGCHECKED
     
ENDMODULE.

MODULE MOD_SYNTAX_CHECK_OK1 OUTPUT.
  SET EXTENDED CHECK ON.
  
  WRITE: / 'SYNTAX CHECK ENABLED'.     
ENDMODULE.

MODULE MOD_SYNTAX_CHECK_OK2 OUTPUT.
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
     
ENDMODULE.