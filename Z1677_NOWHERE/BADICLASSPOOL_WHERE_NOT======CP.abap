* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
BADI_NAME BADICLASSPOOL_WHERE_NOT.
class-pool.
*"* class pool for class BADICLASSPOOL_WHERE_NOT

*"* local classes
include BADICLASSPOOL_WHERE_NOT======cl.

*"* class BADICLASSPOOL_WHERE_NOT definition
*"* public declarations
  include BADICLASSPOOL_WHERE_NOT======cu.
*"* protected declarations
  include BADICLASSPOOL_WHERE_NOT======co.
*"* private declarations
  include BADICLASSPOOL_WHERE_NOT======ci.
endclass. "BADICLASSPOOL_WHERE_NOT definition

class BADICLASSPOOL_WHERE_NOT implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_WHERE_NOT implementation
