* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .
CLASSPOOL_NAME CLASSPOOL_OPEN_READ_DATASET .
class-pool.
*"* class pool for class CLASSPOOL_OPEN_READ_DATASET

*"* local classes
include CLASSPOOL_OPEN_READ_DATASET======cl.

*"* class CLASSPOOL_OPEN_READ_DATASET definition
*"* public declarations
  include CLASSPOOL_OPEN_READ_DATASET======cu.
*"* protected declarations
  include CLASSPOOL_OPEN_READ_DATASET======co.
*"* private declarations
  include CLASSPOOL_OPEN_READ_DATASET======ci.
endclass. "CLASSPOOL_OPEN_READ_DATASET definition

class CLASSPOOL_OPEN_READ_DATASET implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_OPEN_READ_DATASET implementation

