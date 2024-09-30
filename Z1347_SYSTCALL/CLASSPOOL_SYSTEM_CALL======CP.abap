* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
CLASSPOOL_NAME CLASSPOOL_SYSTEM_CALL .
class-pool.
*"* class pool for class CLASSPOOL_SYSTEM_CALL

*"* local classes
include CLASSPOOL_SYSTEM_CALL======cl.

*"* class CLASSPOOL_SYSTEM_CALL definition
*"* public declarations
  include CLASSPOOL_SYSTEM_CALL======cu.
*"* protected declarations
  include CLASSPOOL_SYSTEM_CALL======co.
*"* private declarations
  include CLASSPOOL_SYSTEM_CALL======ci.
endclass. "CLASSPOOL_SYSTEM_CALL definition

class CLASSPOOL_SYSTEM_CALL implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_SYSTEM_CALL implementation

