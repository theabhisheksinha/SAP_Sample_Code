* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .
BADI_NAME BADICLASSPOOL_NATIVE_SQL .
class BADICLASSPOOL_NATIVE_SQL definition
  public
  final
  create public .

*"* public components of class BADICLASSPOOL_NATIVE_SQL
*"* do not include other source files here!!!
public section.

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type.   
           
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_BADI_IFPOOL_NATIVE_SQL .

  events BADI_EVENT_NATIVE_SQL_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_BADI_EVENT_NATIVE_SQL_KO2
    for event BADI_EVENT_NATIVE_SQL_KO2 of BADICLASSPOOL_NATIVE_SQL
    importing I_MESSAGE .

  methods SEND_BADI_EVENT_NATIVE_SQL_KO2
    importing I_MESSAGE type STRING optional .
