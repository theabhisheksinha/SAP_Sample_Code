* extractor_prog_Version 6.0 for SAP 4.7, ECC5, ECC6.
* DATE 20081027 .
* SAP_Version 700 .
* Dev_Class Z1357_WDPSFNRAISE .
CLASS-POOL CLASSPOOL_SUPPLFNC_NOT_RAISE .
class-pool .
*"* class pool for class CLASSPOOL_SUPPLFNC_NOT_RAISE

*"* local classes
include CLASSPOOL_SUPPLFNC_NOT_RAISE=======cl.

*"* class CLASSPOOL_SUPPLFNC_NOT_RAISE definition
*"* public declarations
  include CLASSPOOL_SUPPLFNC_NOT_RAISE=======cu.
*"* protected declarations
  include CLASSPOOL_SUPPLFNC_NOT_RAISE=======co.
*"* private declarations
  include CLASSPOOL_SUPPLFNC_NOT_RAISE=======ci.
endclass. "CLASSPOOL_SUPPLFNC_NOT_RAISE definition

class CLASSPOOL_SUPPLFNC_NOT_RAISE implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_SUPPLFNC_NOT_RAISE implementation

