* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
CLASSPOOL_NAME CLASSPOOL_LOOP_INTO .
class-pool.
*"* class pool for class CLASSPOOL_LOOP_INTO

*"* local classes
  include CLASSPOOL_LOOP_INTO======cl.

*"* class CLASSPOOL_LOOP_INTO definition
*"* public declarations
  include CLASSPOOL_LOOP_INTO======cu.
*"* protected declarations
  include CLASSPOOL_LOOP_INTO======co.
*"* private declarations
  include CLASSPOOL_LOOP_INTO======ci.
endclass. "CLASSPOOL_LOOP_INTO definition

class CLASSPOOL_LOOP_INTO implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_LOOP_INTO implementation

