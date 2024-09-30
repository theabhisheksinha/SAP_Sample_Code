* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
CLASSPOOL_NAME CLASSPOOL_LOOP_INTO .
class CLASSPOOL_LOOP_INTO definition
  public
  final
  create public .

*"* public components of class CLASSPOOL_LOOP_INTO
*"* do not include other source files here!!!
public section.

		TYPES: authors_type     TYPE STANDARD TABLE OF authors     WITH DEFAULT KEY,
		       titleauthor_type TYPE STANDARD TABLE OF titleauthor WITH DEFAULT KEY,
		       titles_type      TYPE STANDARD TABLE OF titles      WITH DEFAULT KEY,
		       au_lname_type    TYPE au_lname-authors,
		       au_fname_type    TYPE au_fname-authors. 
    
    DATA:  tab_authors     TYPE authors_type,
           tab_tilteauthor TYPE titleauthor_type,
           tab_titles      TYPE titles_type,
           col_au_lname    TYPE au_lname_type,
           col_au_fname    TYPE au_fname_type,
           col_title       TYPE titles_type.   
                
    FIELD-SYMBOLS <line_authors> LIKE LINE OF tab_authors.
    DATA   line_titles           LIKE LINE OF tab_titles. 
    
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR.
  
  interfaces IF_IFPOOL_LOOP_INTO .

  events EVENT_LOOP_INTO_KO2
    exporting
      value(I_MESSAGE) type STRING optional .

  methods ON_EVENT_LOOP_INTO_KO2
    for event EVENT_LOOP_INTO_KO2 of CLASSPOOL_LOOP_INTO
    importing I_MESSAGE .
    
  methods SEND_EVENT_LOOP_INTO_KO2
    importing I_MESSAGE type STRING optional .
