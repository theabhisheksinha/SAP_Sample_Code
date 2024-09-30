* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
BADI_NAME BADICLASSPOOL_NESTED_LOOPS.
class-pool.
*"* class pool for class BADICLASSPOOL_NESTED_LOOPS

*"* local classes
include BADICLASSPOOL_NESTED_LOOPS======cl.

*"* class BADICLASSPOOL_NESTED_LOOPS definition
*"* public declarations
  include BADICLASSPOOL_NESTED_LOOPS======cu.
*"* protected declarations
  include BADICLASSPOOL_NESTED_LOOPS======co.
*"* private declarations
  include BADICLASSPOOL_NESTED_LOOPS======ci.
endclass. "BADICLASSPOOL_NESTED_LOOPS definition

class BADICLASSPOOL_NESTED_LOOPS implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_NESTED_LOOPS implementation
