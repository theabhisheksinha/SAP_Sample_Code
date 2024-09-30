* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .
BADI_NAME BADICLASSPOOL_OPEN_READ_DATASET.
class-pool.
*"* class pool for class BADICLASSPOOL_OPEN_READ_DATASET

*"* local classes
include BADICLASSPOOL_OPEN_READ_DATASET======cl.

*"* class BADICLASSPOOL_OPEN_READ_DATASET definition
*"* public declarations
  include BADICLASSPOOL_OPEN_READ_DATASET======cu.
*"* protected declarations
  include BADICLASSPOOL_OPEN_READ_DATASET======co.
*"* private declarations
  include BADICLASSPOOL_OPEN_READ_DATASET======ci.
endclass. "BADICLASSPOOL_OPEN_READ_DATASET definition

class BADICLASSPOOL_OPEN_READ_DATASET implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_OPEN_READ_DATASET implementation
