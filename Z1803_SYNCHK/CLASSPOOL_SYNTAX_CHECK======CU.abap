* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK  .
CLASSPOOL_NAME CLASSPOOL_SYNTAX_CHECK .
class CLASSPOOL_SYNTAX_CHECK definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_SYNTAX_CHECK
*"* do not include other source files here!!!
public section.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_SYNTAX_CHECK .


  events EVENT_SYNTAX_CHECK_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  events EVENT_SYNTAX_CHECK_KO3
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_SYNTAX_CHECK_KO2
    for event EVENT_SYNTAX_CHECK_KO2 of CLASSPOOL_SYNTAX_CHECK
    importing I_MESSAGE .

  methods ON_EVENT_SYNTAX_CHECK_KO3
    for event EVENT_SYNTAX_CHECK_KO3 of CLASSPOOL_SYNTAX_CHECK
    importing I_MESSAGE .
    
  methods SEND_EVENT_SYNTAX_CHECK_KO2
    importing I_MESSAGE type STRING optional .
    
  methods SEND_EVENT_SYNTAX_CHECK_KO3
    importing I_MESSAGE type STRING optional .
