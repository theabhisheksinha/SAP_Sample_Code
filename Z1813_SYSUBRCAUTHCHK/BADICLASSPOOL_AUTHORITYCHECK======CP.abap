* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1813_SYSUBRCAUTHCHK .
BADI_NAME BADICLASSPOOL_AUTHORITYCHECK.
class-pool.
*"* class pool for class BADICLASSPOOL_AUTHORITYCHECK

*"* local classes
include BADICLASSPOOL_AUTHORITYCHECK======cl.

*"* class BADICLASSPOOL_AUTHORITYCHECK definition
*"* public declarations
  include BADICLASSPOOL_AUTHORITYCHECK======cu.
*"* protected declarations
  include BADICLASSPOOL_AUTHORITYCHECK======co.
*"* private declarations
  include BADICLASSPOOL_AUTHORITYCHECK======ci.
endclass. "BADICLASSPOOL_AUTHORITYCHECK definition

class BADICLASSPOOL_AUTHORITYCHECK implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_AUTHORITYCHECK implementation
