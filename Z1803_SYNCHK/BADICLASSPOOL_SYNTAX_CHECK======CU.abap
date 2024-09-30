* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
BADI_NAME BADICLASSPOOL_SYNTAX_CHECK .
class BADICLASSPOOL_SYNTAX_CHECK definition
  public
  final
  create public .

*"* public components of class BADICLASSPOOL_SYNTAX_CHECK
*"* do not include other source files here!!!
public section.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_BADI_IFPOOL_SYNTAX_CHECK .

  events BADI_EVENT_SYNTAX_CHECK_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  events BADI_EVENT_SYNTAX_CHECK_KO3
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_BADI_EVENT_SYNTAX_CHECK_KO2
    for event BADI_EVENT_SYNTAX_CHECK_KO2 of BADICLASSPOOL_SYNTAX_CHECK
    importing I_MESSAGE .

 methods ON_BADI_EVENT_SYNTAX_CHECK_KO3
    for event BADI_EVENT_SYNTAX_CHECK_KO3 of BADICLASSPOOL_SYNTAX_CHECK
    importing I_MESSAGE .

  methods SEND_BADI_EVENT_SYNTAX_CHECK_KO2
    importing I_MESSAGE type STRING optional .

  methods SEND_BADI_EVENT_SYNTAX_CHECK_KO3
    importing I_MESSAGE type STRING optional .
