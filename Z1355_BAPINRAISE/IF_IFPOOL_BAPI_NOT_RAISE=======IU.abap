* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
INTERFACEPOOL_NAME IF_IFPOOL_BAPI_NOT_RAISE .
*"* components of interface IF_IFPOOL_BAPI_NOT_RAISE
interface IF_IFPOOL_BAPI_NOT_RAISE
  public .

  methods METH_BAPI_NOT_RAISE_OK1
    exporting
      value BAPIRETURN type i .
      
  methods METH_BAPI_NOT_RAISE_KO1
    exporting
      value BAPIRETURN type i .
endinterface.
