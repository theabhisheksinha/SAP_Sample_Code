* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
BADI_NAME BADICLASSPOOL_SQL_INSIDE_LOOP.
class-pool.
*"* class pool for class BADICLASSPOOL_SQL_INSIDE_LOOP

*"* local classes
include BADICLASSPOOL_SQL_INSIDE_LOOP======cl.

*"* class BADICLASSPOOL_SQL_INSIDE_LOOP definition
*"* public declarations
  include BADICLASSPOOL_SQL_INSIDE_LOOP======cu.
*"* protected declarations
  include BADICLASSPOOL_SQL_INSIDE_LOOP======co.
*"* private declarations
  include BADICLASSPOOL_SQL_INSIDE_LOOP======ci.
endclass. "BADICLASSPOOL_SQL_INSIDE_LOOP definition

class BADICLASSPOOL_SQL_INSIDE_LOOP implementation.
*"* method's implementations
  include methods.
endclass. "BADICLASSPOOL_SQL_INSIDE_LOOP implementation
