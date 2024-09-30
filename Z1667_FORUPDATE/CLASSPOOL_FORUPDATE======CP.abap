* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
CLASSPOOL_NAME CLASSPOOL_FORUPDATE .
class-pool.
*"* class pool for class CLASSPOOL_FORUPDATE

*"* local classes
  include CLASSPOOL_FORUPDATE======cl.

*"* class CLASSPOOL_FORUPDATE definition
*"* public declarations
  include CLASSPOOL_FORUPDATE======cu.
*"* protected declarations
  include CLASSPOOL_FORUPDATE======co.
*"* private declarations
  include CLASSPOOL_FORUPDATE======ci.
endclass. "CLASSPOOL_FORUPDATE definition

class CLASSPOOL_FORUPDATE implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_FORUPDATE implementation

