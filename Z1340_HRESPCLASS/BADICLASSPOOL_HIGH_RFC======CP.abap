* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1340_HRESPCLASS.
BADI_NAME BADICLASSPOOL_HIGH_RFC.
class-pool.
*"* class pool for class BADICLASSPOOL_HIGH_RFC

*"* local classes
include BADICLASSPOOL_HIGH_RFC======cl.

*"* class BADICLASSPOOL_HIGH_RFC definition
*"* public declarations
  include BADICLASSPOOL_HIGH_RFC======cu.
*"* protected declarations
  include BADICLASSPOOL_HIGH_RFC======co.
*"* private declarations
  include BADICLASSPOOL_HIGH_RFC======ci.
endclass. "BADICLASSPOOL_HIGH_RFC definition

class BADICLASSPOOL_HIGH_RFC implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_HIGH_RFC implementation
