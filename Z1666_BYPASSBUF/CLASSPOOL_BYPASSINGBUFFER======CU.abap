* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
CLASSPOOL_NAME CLASSPOOL_BYPASSINGBUFFER .
class CLASSPOOL_BYPASSINGBUFFER definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_BYPASSINGBUFFER
*"* do not include other source files here!!!
public section.

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors,
		       title_type       TYPE title-titles. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE title_type.   
           
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_BYPASSINGBUFFER .

  events EVENT_BYPASSINGBUFFER_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_BYPASSINGBUFFER_KO2
    for event EVENT_BYPASSINGBUFFER_KO2 of CLASSPOOL_BYPASSINGBUFFER
    importing I_MESSAGE .
    
  methods SEND_EVENT_BYPASSINGBUFFER_KO2
    importing I_MESSAGE type STRING optional .
