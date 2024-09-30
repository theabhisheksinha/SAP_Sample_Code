* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
BADI_NAME BADICLASSPOOL_SYSTEM_CALL .
class BADICLASSPOOL_SYSTEM_CALL definition
  public
  final
  create public .

*"* public components of class BADICLASSPOOL_SYSTEM_CALL
*"* do not include other source files here!!!
public section.

* SYSTEM-CALL used for Method management for the new ABAP class library
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
* SYSTEM-CALL used for CHECK calls
* and for Method management for the new ABAP class library
  interfaces IF_BADI_IFPOOL_SYSTEM_CALL .


  events BADI_EVENT_SYSTEM_CALL_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  events BADI_EVENT_SYSTEM_CALL_KO3
    exporting
      value(I_MESSAGE) type STRING optional .

* SYSTEM-CALL used for Method management for the new ABAP class library		
  methods ON_BADI_EVENT_SYSTEM_CALL_KO2
    for event BADI_EVENT_SYSTEM_CALL_KO2 of BADICLASSPOOL_SYSTEM_CALL
    importing I_MESSAGE .

* SYSTEM-CALL used for Method management for the new ABAP class library
  methods ON_BADI_EVENT_SYSTEM_CALL_KO3
    for event BADI_EVENT_SYSTEM_CALL_KO3 of BADICLASSPOOL_SYSTEM_CALL
    importing I_MESSAGE .

  methods SEND_BADI_EVENT_SYSTEM_CALL_KO2
    importing I_MESSAGE type STRING optional .

  methods SEND_BADI_EVENT_SYSTEM_CALL_KO3
    importing I_MESSAGE type STRING optional .
