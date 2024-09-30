* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .
CLASSPOOL_NAME CLASSPOOL_OPEN_READ_DATASET .
class CLASSPOOL_OPEN_READ_DATASET definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_OPEN_READ_DATASET
*"* do not include other source files here!!!
public section.
  DATA: file     TYPE string  VALUE 'test.dat',
        result   TYPE string.

  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_OPEN_READ_DATASET .

  events EVENT_OPEN_READ_DATASET_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_OPEN_READ_DATASET_KO2
    for event EVENT_OPEN_READ_DATASET_KO2 of CLASSPOOL_OPEN_READ_DATASET
    importing I_MESSAGE .
    
  methods SEND_EVENT_OPEN_READ_DATASET_KO2
    importing I_MESSAGE type STRING optional .
