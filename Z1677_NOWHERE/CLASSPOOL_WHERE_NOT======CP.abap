* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
CLASSPOOL_NAME CLASSPOOL_WHERE_NOT .
class-pool.
*"* class pool for class CLASSPOOL_WHERE_NOT

*"* local classes
  include CLASSPOOL_WHERE_NOT======cl.

*"* class CLASSPOOL_WHERE_NOT definition
*"* public declarations
  include CLASSPOOL_WHERE_NOT======cu.
*"* protected declarations
  include CLASSPOOL_WHERE_NOT======co.
*"* private declarations
  include CLASSPOOL_WHERE_NOT======ci.
endclass. "CLASSPOOL_WHERE_NOT definition

class CLASSPOOL_WHERE_NOT implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_WHERE_NOT implementation

