* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
CLASSPOOL_NAME CLASSPOOL_FORUPDATE .
class CLASSPOOL_FORUPDATE  definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_FORUPDATE 
*"* do not include other source files here!!!
public section.

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors.
    
    DATA:  tab_authors     TYPE authors_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type. 
            
     DATA: LINE(72) TYPE c,
           i_authors LIKE TABLE OF LINE(72). 
           
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_FORUPDATE .

  events EVENT_FORUPDATE_KO2
    exporting
      value(I_MESSAGE) type STRING optional .
      
  methods ON_EVENT_FORUPDATE_KO2
    for event EVENT_FORUPDATE_KO2 of CLASSPOOL_FORUPDATE
    importing I_MESSAGE .

  methods SEND_EVENT_FORUPDATE_KO2
    importing I_MESSAGE type STRING optional .
