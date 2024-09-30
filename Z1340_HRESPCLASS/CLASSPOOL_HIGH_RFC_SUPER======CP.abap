* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC_SUPER .
class-pool.
*"* class pool for class CLASSPOOL_HIGH_RFC_SUPER

*"* local classes
include CLASSPOOL_HIGH_RFC_SUPER======cl.

*"* class CLASSPOOL_HIGH_RFC_SUPER definition
*"* public declarations
  include CLASSPOOL_HIGH_RFC_SUPER======cu.
*"* protected declarations
  include CLASSPOOL_HIGH_RFC_SUPER======co.
*"* private declarations
  include CLASSPOOL_HIGH_RFC_SUPER======ci.
endclass. "CLASSPOOL_HIGH_RFC_SUPER definition

class CLASSPOOL_HIGH_RFC_SUPER implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_HIGH_RFC_SUPER implementation

