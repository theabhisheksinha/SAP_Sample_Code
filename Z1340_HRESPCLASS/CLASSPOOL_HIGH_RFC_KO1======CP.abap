* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_KO1 .
class-pool.
*"* class pool for class CLASSPOOL_HIGH_RFC_KO1

*"* local classes
include CLASSPOOL_HIGH_RFC_KO1======cl.

*"* class CLASSPOOL_HIGH_RFC_KO1 definition
*"* public declarations
  include CLASSPOOL_HIGH_RFC_KO1======cu.
*"* protected declarations
  include CLASSPOOL_HIGH_RFC_KO1======co.
*"* private declarations
  include CLASSPOOL_HIGH_RFC_KO1======ci.
endclass. "CLASSPOOL_HIGH_RFC_KO1 definition

class CLASSPOOL_HIGH_RFC_KO1 implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_HIGH_RFC_KO1 implementation

