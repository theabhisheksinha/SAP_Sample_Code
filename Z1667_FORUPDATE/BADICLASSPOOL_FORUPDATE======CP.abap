* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1667_FORUPDATE .
BADI_NAME BADICLASSPOOL_FORUPDATE.
class-pool.
*"* class pool for class BADICLASSPOOL_FORUPDATE

*"* local classes
include BADICLASSPOOL_FORUPDATE======cl.

*"* class BADICLASSPOOL_FORUPDATE definition
*"* public declarations
  include BADICLASSPOOL_FORUPDATE======cu.
*"* protected declarations
  include BADICLASSPOOL_FORUPDATE======co.
*"* private declarations
  include BADICLASSPOOL_FORUPDATE======ci.
endclass. "BADICLASSPOOL_FORUPDATE definition

class BADICLASSPOOL_FORUPDATE implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_FORUPDATE implementation
