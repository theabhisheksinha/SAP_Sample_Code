* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
BADI_NAME BADICLASSPOOL_LOOP_INTO.
class-pool.
*"* class pool for class BADICLASSPOOL_LOOP_INTO

*"* local classes
include BADICLASSPOOL_LOOP_INTO======cl.

*"* class BADICLASSPOOL_LOOP_INTO definition
*"* public declarations
  include BADICLASSPOOL_LOOP_INTO======cu.
*"* protected declarations
  include BADICLASSPOOL_LOOP_INTO======co.
*"* private declarations
  include BADICLASSPOOL_LOOP_INTO======ci.
endclass. "BADICLASSPOOL_LOOP_INTO definition

class BADICLASSPOOL_LOOP_INTO implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_LOOP_INTO implementation
