* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1347_SYSTCALL .
BADI_NAME BADICLASSPOOL_SYSTEM_CALL.
class-pool.
*"* class pool for class BADICLASSPOOL_SYSTEM_CALL

*"* local classes
include BADICLASSPOOL_SYSTEM_CALL======cl.

*"* class BADICLASSPOOL_SYSTEM_CALL definition
*"* public declarations
  include BADICLASSPOOL_SYSTEM_CALL======cu.
*"* protected declarations
  include BADICLASSPOOL_SYSTEM_CALL======co.
*"* private declarations
  include BADICLASSPOOL_SYSTEM_CALL======ci.
endclass. "BADICLASSPOOL_SYSTEM_CALL definition

class BADICLASSPOOL_SYSTEM_CALL implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_SYSTEM_CALL implementation
