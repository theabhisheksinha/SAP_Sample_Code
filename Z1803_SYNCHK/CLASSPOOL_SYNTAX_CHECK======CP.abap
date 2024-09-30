* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK  .
CLASSPOOL_NAME CLASSPOOL_SYNTAX_CHECK .
class-pool.
*"* class pool for class CLASSPOOL_SYNTAX_CHECK

*"* local classes
include CLASSPOOL_SYNTAX_CHECK======cl.

*"* class CLASSPOOL_SYNTAX_CHECK definition
*"* public declarations
  include CLASSPOOL_SYNTAX_CHECK======cu.
*"* protected declarations
  include CLASSPOOL_SYNTAX_CHECK======co.
*"* private declarations
  include CLASSPOOL_SYNTAX_CHECK======ci.
endclass. "CLASSPOOL_SYNTAX_CHECK definition

class CLASSPOOL_SYNTAX_CHECK implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_SYNTAX_CHECK implementation

