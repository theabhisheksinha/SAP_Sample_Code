* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .
CLASSPOOL_NAME CLASSPOOL_NATIVE_SQL .
class-pool.
*"* class pool for class CLASSPOOL_NATIVE_SQL

*"* local classes
  include CLASSPOOL_NATIVE_SQL======cl.

*"* class CLASSPOOL_NATIVE_SQL definition
*"* public declarations
  include CLASSPOOL_NATIVE_SQL======cu.
*"* protected declarations
  include CLASSPOOL_NATIVE_SQL======co.
*"* private declarations
  include CLASSPOOL_NATIVE_SQL======ci.
endclass. "CLASSPOOL_NATIVE_SQL definition

class CLASSPOOL_NATIVE_SQL implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_NATIVE_SQL implementation

