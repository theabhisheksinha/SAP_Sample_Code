* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1368_NSQL .
BADI_NAME BADICLASSPOOL_NATIVE_SQL.
class-pool.
*"* class pool for class BADICLASSPOOL_NATIVE_SQL

*"* local classes
include BADICLASSPOOL_NATIVE_SQL======cl.

*"* class BADICLASSPOOL_NATIVE_SQL definition
*"* public declarations
  include BADICLASSPOOL_NATIVE_SQL======cu.
*"* protected declarations
  include BADICLASSPOOL_NATIVE_SQL======co.
*"* private declarations
  include BADICLASSPOOL_NATIVE_SQL======ci.
endclass. "BADICLASSPOOL_NATIVE_SQL definition

class BADICLASSPOOL_NATIVE_SQL implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_NATIVE_SQL implementation
