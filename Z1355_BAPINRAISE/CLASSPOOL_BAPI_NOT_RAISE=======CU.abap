* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1355_BAPINRAISE .
CLASSPOOL_NAME CLASSPOOL_BAPI_NOT_RAISE .
class CLASSPOOL_BAPI_NOT_RAISE definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_BAPI_NOT_RAISE
*"* do not include other source files here!!!
public section.
  DATA BAPIRETURN  TYPE I.
  
  interfaces IF_IFPOOL_BAPI_NOT_RAISE .

*  constants VERSION type VERSION value 000001 .
*  type-pools SXRT .
