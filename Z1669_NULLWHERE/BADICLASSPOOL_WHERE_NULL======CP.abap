* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1669_NULLWHERE .
BADI_NAME BADICLASSPOOL_WHERE_NULL.
class-pool.
*"* class pool for class BADICLASSPOOL_WHERE_NULL

*"* local classes
include BADICLASSPOOL_WHERE_NULL======cl.

*"* class BADICLASSPOOL_WHERE_NULL definition
*"* public declarations
  include BADICLASSPOOL_WHERE_NULL======cu.
*"* protected declarations
  include BADICLASSPOOL_WHERE_NULL======co.
*"* private declarations
  include BADICLASSPOOL_WHERE_NULL======ci.
endclass. "BADICLASSPOOL_WHERE_NULL definition

class BADICLASSPOOL_WHERE_NULL implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_WHERE_NULL implementation
