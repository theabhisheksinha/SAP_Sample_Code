* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
CLASSPOOL_NAME CLASSPOOL_BYPASSINGBUFFER .
class-pool.
*"* class pool for class CLASSPOOL_BYPASSINGBUFFER

*"* local classes
  include CLASSPOOL_BYPASSINGBUFFER======cl.

*"* class CLASSPOOL_BYPASSINGBUFFER definition
*"* public declarations
  include CLASSPOOL_BYPASSINGBUFFER======cu.
*"* protected declarations
  include CLASSPOOL_BYPASSINGBUFFER======co.
*"* private declarations
  include CLASSPOOL_BYPASSINGBUFFER======ci.
endclass. "CLASSPOOL_BYPASSINGBUFFER definition

class CLASSPOOL_BYPASSINGBUFFER implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_BYPASSINGBUFFER implementation

