* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .
CLASSPOOL_NAME CLASSPOOL_AUTHORITYCHECK .
class-pool.
*"* class pool for class CLASSPOOL_AUTHORITYCHECK

*"* local classes
include CLASSPOOL_AUTHORITYCHECK======cl.

*"* class CLASSPOOL_AUTHORITYCHECK definition
*"* public declarations
  include CLASSPOOL_AUTHORITYCHECK======cu.
*"* protected declarations
  include CLASSPOOL_AUTHORITYCHECK======co.
*"* private declarations
  include CLASSPOOL_AUTHORITYCHECK======ci.
endclass. "CLASSPOOL_AUTHORITYCHECK definition

class CLASSPOOL_AUTHORITYCHECK implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_AUTHORITYCHECK implementation

