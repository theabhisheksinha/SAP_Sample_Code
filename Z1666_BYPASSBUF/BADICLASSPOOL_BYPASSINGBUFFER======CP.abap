* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1666_BYPASSBUF .
BADI_NAME BADICLASSPOOL_BYPASSINGBUFFER.
class-pool.
*"* class pool for class BADICLASSPOOL_BYPASSINGBUFFER

*"* local classes
include BADICLASSPOOL_BYPASSINGBUFFER======cl.

*"* class BADICLASSPOOL_BYPASSINGBUFFER definition
*"* public declarations
  include BADICLASSPOOL_BYPASSINGBUFFER======cu.
*"* protected declarations
  include BADICLASSPOOL_BYPASSINGBUFFER======co.
*"* private declarations
  include BADICLASSPOOL_BYPASSINGBUFFER======ci.
endclass. "BADICLASSPOOL_BYPASSINGBUFFER definition

class BADICLASSPOOL_BYPASSINGBUFFER implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_BYPASSINGBUFFER implementation
