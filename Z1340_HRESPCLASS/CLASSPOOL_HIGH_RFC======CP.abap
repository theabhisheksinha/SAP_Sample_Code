* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
CLASSPOOL_NAME CLASSPOOL_HIGH_RFC .
class-pool.
*"* class pool for class CLASSPOOL_HIGH_RFC

*"* local classes
include CLASSPOOL_HIGH_RFC======cl.

*"* class CLASSPOOL_HIGH_RFC definition
*"* public declarations
  include CLASSPOOL_HIGH_RFC======cu.
*"* protected declarations
  include CLASSPOOL_HIGH_RFC======co.
*"* private declarations
  include CLASSPOOL_HIGH_RFC======ci.
endclass. "CLASSPOOL_HIGH_RFC definition

class CLASSPOOL_HIGH_RFC implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_HIGH_RFC implementation

