* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
CLASSPOOL_NAME CLASSPOOL_SY_UNAME .
method IF_IFPOOL_SY_UNAME~IF_METH_SY_UNAME_KO2.

CASE SY-UNAME.
  WHEN 'JOHN DOE'.
      WRITE: / 'SY-UNAME =', SY-UNAME.
  WHEN OTHERS.
      WRITE: / 'SY-UNAME=', SY-UNAME.
ENDCASE.

ENDMETHOD.