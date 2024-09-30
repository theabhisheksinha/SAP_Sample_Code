* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
CLASSPOOL_NAME CLASSPOOL_NESTED_LOOPS .
class-pool.
*"* class pool for class CLASSPOOL_NESTED_LOOPS

*"* local classes
  include CLASSPOOL_NESTED_LOOPS======cl.

*"* class CLASSPOOL_NESTED_LOOPS definition
*"* public declarations
  include CLASSPOOL_NESTED_LOOPS======cu.
*"* protected declarations
  include CLASSPOOL_NESTED_LOOPS======co.
*"* private declarations
  include CLASSPOOL_NESTED_LOOPS======ci.
endclass. "CLASSPOOL_NESTED_LOOPS definition

class CLASSPOOL_NESTED_LOOPS implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_NESTED_LOOPS implementation

