* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_OK .
class CLASSPOOL_HIGH_RFC_OK definition INHERITING FROM CLASSPOOL_HIGH_RFC_SUPER FINAL
  public
  final
  create public .

*"* public components of class CLASSPOOL_HIGH_RFC_OK
*"* do not include other source files here!!!
public section.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.

  events EVENT_HIGH_RFC_OK_1
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_HIGH_RFC_OK_1
    for event EVENT_HIGH_RFC_OK_1 of CLASSPOOL_HIGH_RFC_OK
    importing I_MESSAGE .

  methods SEND_EVENT_HIGH_RFC_OK_1
    importing I_MESSAGE type STRING optional .
