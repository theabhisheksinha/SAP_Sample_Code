* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
BADI_NAME BADICLASSPOOL_SYNTAX_CHECK.
class-pool.
*"* class pool for class BADICLASSPOOL_SYNTAX_CHECK

*"* local classes
include BADICLASSPOOL_SYNTAX_CHECK======cl.

*"* class BADICLASSPOOL_SYNTAX_CHECK definition
*"* public declarations
  include BADICLASSPOOL_SYNTAX_CHECK======cu.
*"* protected declarations
  include BADICLASSPOOL_SYNTAX_CHECK======co.
*"* private declarations
  include BADICLASSPOOL_SYNTAX_CHECK======ci.
endclass. "BADICLASSPOOL_SYNTAX_CHECK definition

class BADICLASSPOOL_SYNTAX_CHECK implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_SYNTAX_CHECK implementation
