* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK  .
BADI_NAME IF_BADI_IFPOOL_SYNTAX_CHECK .
*"* components of interface BADI_IFPOOL_SYNTAX_CHECK
interface IF_BADI_IFPOOL_SYNTAX_CHECK
  public .

  methods IF_BADI_METH_SYNTAX_CHECK_KO1.
  methods IF_BADI_METH_SYNTAX_CHECK_KO2.
  methods IF_BADI_METH_SYNTAX_CHECK_OK1.
  methods IF_BADI_METH_SYNTAX_CHECK_OK2.
    
endinterface.
