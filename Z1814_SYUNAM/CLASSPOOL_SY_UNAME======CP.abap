* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1814_SYUNAM .
CLASSPOOL_NAME CLASSPOOL_SY_UNAME .
class-pool.
*"* class pool for class CLASSPOOL_SY_UNAME

*"* local classes
include CLASSPOOL_SY_UNAME======cl.

*"* class CLASSPOOL_SY_UNAME definition
*"* public declarations
  include CLASSPOOL_SY_UNAME======cu.
*"* protected declarations
  include CLASSPOOL_SY_UNAME======co.
*"* private declarations
  include CLASSPOOL_SY_UNAME======ci.
endclass. "CLASSPOOL_SY_UNAME definition

class CLASSPOOL_SY_UNAME implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_SY_UNAME implementation

