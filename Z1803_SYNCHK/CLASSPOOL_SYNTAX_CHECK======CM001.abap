* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
CLASSPOOL_NAME CLASSPOOL_SYNTAX_CHECK .

method IF_IFPOOL_SYNTAX_CHECK~IF_METH_SYNTAX_CHECK_OK2.
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
ENDMETHOD.
