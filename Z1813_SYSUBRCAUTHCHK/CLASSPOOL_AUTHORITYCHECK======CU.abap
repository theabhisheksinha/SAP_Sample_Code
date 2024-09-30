* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .
CLASSPOOL_NAME CLASSPOOL_AUTHORITYCHECK .
class CLASSPOOL_AUTHORITYCHECK definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_AUTHORITYCHECK
*"* do not include other source files here!!!
public section.


  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_AUTHORITYCHECK .

  events EVENT_AUTHORITYCHECK_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_AUTHORITYCHECK_KO2
    for event EVENT_AUTHORITYCHECK_KO2 of CLASSPOOL_AUTHORITYCHECK
    importing I_MESSAGE .
    
  methods SEND_EVENT_AUTHORITYCHECK_KO2
    importing I_MESSAGE type STRING optional .
