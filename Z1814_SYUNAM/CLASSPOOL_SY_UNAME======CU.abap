* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
CLASSPOOL_NAME CLASSPOOL_SY_UNAME .
class CLASSPOOL_SY_UNAME definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_SY_UNAME
*"* do not include other source files here!!!
public section.

* SY-UNAME = 'string' case
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
* SY-UNAME <> 'string' case
* SY-UNAME in ELSEIF case
* SY-UNAME in CASE case 
  interfaces IF_IFPOOL_SY_UNAME .


  events EVENT_SY_UNAME_KO4
    exporting
      value(I_MESSAGE) type STRING optional .

  events EVENT_SY_UNAME_KO5
    exporting
      value(I_MESSAGE) type STRING optional .

* SY-UNAME EQ 'string' case	
  methods ON_EVENT_SY_UNAME_KO4
    for event EVENT_SY_UNAME_KO4 of CLASSPOOL_SY_UNAME
    importing I_MESSAGE .

* SY-UNAME NE 'string' case
  methods ON_EVENT_SY_UNAME_KO5
    for event EVENT_SY_UNAME_KO5 of CLASSPOOL_SY_UNAME
    importing I_MESSAGE .
    
  methods SEND_EVENT_SY_UNAME_KO4
    importing I_MESSAGE type STRING optional .
    
  methods SEND_EVENT_SY_UNAME_KO5
    importing I_MESSAGE type STRING optional .
