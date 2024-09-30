* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1670_SELWHERE .
BADI_NAME BADICLASSPOOL_WITHOUT_WHERE.
class-pool.
*"* class pool for class BADICLASSPOOL_WITHOUT_WHERE

*"* local classes
include BADICLASSPOOL_WITHOUT_WHERE======cl.

*"* class BADICLASSPOOL_WITHOUT_WHERE definition
*"* public declarations
  include BADICLASSPOOL_WITHOUT_WHERE======cu.
*"* protected declarations
  include BADICLASSPOOL_WITHOUT_WHERE======co.
*"* private declarations
  include BADICLASSPOOL_WITHOUT_WHERE======ci.
endclass. "BADICLASSPOOL_WITHOUT_WHERE definition

class BADICLASSPOOL_WITHOUT_WHERE implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_WITHOUT_WHERE implementation
