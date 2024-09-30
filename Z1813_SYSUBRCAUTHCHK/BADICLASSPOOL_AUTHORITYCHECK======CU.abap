* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .
BADI_NAME BADICLASSPOOL_AUTHORITYCHECK .
class BADICLASSPOOL_AUTHORITYCHECK definition
  public
  final
  create public .

*"* public components of class BADICLASSPOOL_AUTHORITYCHECK
*"* do not include other source files here!!!
public section.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_BADI_IFPOOL_AUTHORITYCHECK .


  events BADI_EVENT_AUTHORITYCHECK_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_BADI_EVENT_AUTHORITYCHECK_KO2
    for event BADI_EVENT_AUTHORITYCHECK_KO2 of BADICLASSPOOL_AUTHORITYCHECK
    importing I_MESSAGE .

  methods SEND_BADI_EVENT_AUTHORITYCHECK_KO2
    importing I_MESSAGE type STRING optional .
