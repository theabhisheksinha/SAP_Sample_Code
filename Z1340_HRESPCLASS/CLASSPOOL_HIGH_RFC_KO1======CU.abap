* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_KO1 .
class CLASSPOOL_HIGH_RFC_KO1 definition INHERITING FROM CLASSPOOL_HIGH_RFC_SUPER FINAL
  public
  final
  create public .

*"* public components of class CLASSPOOL_HIGH_RFC_KO1
*"* do not include other source files here!!!
public section.

  DATA: BadiRef  TYPE REF TO BADICLASSPOOL_HIGH_RFC.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.

  events EVENT_HIGH_RFC_KO1_1
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_HIGH_RFC_KO1_1
    for event EVENT_HIGH_RFC_KO1_1 of CLASSPOOL_HIGH_RFC_KO1
    importing I_MESSAGE .

  methods SEND_EVENT_HIGH_RFC_KO1_1
    importing I_MESSAGE type STRING optional .
    
  methods MET_HIGH_RFC_BADI_1.
  methods MET_HIGH_RFC_BADI_2.
