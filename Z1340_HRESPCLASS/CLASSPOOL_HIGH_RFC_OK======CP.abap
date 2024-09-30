* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_OK .
class-pool.
*"* class pool for class CLASSPOOL_HIGH_RFC_OK

*"* local classes
include CLASSPOOL_HIGH_RFC_OK======cl.

*"* class CLASSPOOL_HIGH_RFC_OK definition
*"* public declarations
  include CLASSPOOL_HIGH_RFC_OK======cu.
*"* protected declarations
  include CLASSPOOL_HIGH_RFC_OK======co.
*"* private declarations
  include CLASSPOOL_HIGH_RFC_OK======ci.
endclass. "CLASSPOOL_HIGH_RFC_OK definition

class CLASSPOOL_HIGH_RFC_OK implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_HIGH_RFC_OK implementation

