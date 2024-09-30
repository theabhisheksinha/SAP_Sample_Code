* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
BADI_NAME BADICLASSPOOL_SY_UNAME.
class-pool.
*"* class pool for class BADICLASSPOOL_SY_UNAME

*"* local classes
include BADICLASSPOOL_SY_UNAME======cl.

*"* class BADICLASSPOOL_SY_UNAME definition
*"* public declarations
  include BADICLASSPOOL_SY_UNAME======cu.
*"* protected declarations
  include BADICLASSPOOL_SY_UNAME======co.
*"* private declarations
  include BADICLASSPOOL_SY_UNAME======ci.
endclass. "BADICLASSPOOL_SY_UNAME definition

class BADICLASSPOOL_SY_UNAME implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_SY_UNAME implementation
