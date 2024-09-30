* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1670_SELWHERE .
CLASSPOOL_NAME CLASSPOOL_WITHOUT_WHERE .
class-pool.
*"* class pool for class CLASSPOOL_WITHOUT_WHERE

*"* local classes
  include CLASSPOOL_WITHOUT_WHERE======cl.

*"* class CLASSPOOL_WITHOUT_WHERE definition
*"* public declarations
  include CLASSPOOL_WITHOUT_WHERE======cu.
*"* protected declarations
  include CLASSPOOL_WITHOUT_WHERE======co.
*"* private declarations
  include CLASSPOOL_WITHOUT_WHERE======ci.
endclass. "CLASSPOOL_WITHOUT_WHERE definition

class CLASSPOOL_WITHOUT_WHERE implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_WITHOUT_WHERE implementation

