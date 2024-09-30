* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_SUPER .
class CLASSPOOL_HIGH_RFC_SUPER definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_HIGH_RFC_SUPER
*"* do not include other source files here!!!
public section.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_HIGH_RFC_SUPER .

  events EVENT_HIGH_RFC_SUPER
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_HIGH_RFC_SUPER
    for event EVENT_HIGH_RFC_SUPER of CLASSPOOL_HIGH_RFC_SUPER
    importing I_MESSAGE .
    
  methods SEND_EVENT_HIGH_RFC_SUPER
    importing I_MESSAGE type STRING optional .
    
  