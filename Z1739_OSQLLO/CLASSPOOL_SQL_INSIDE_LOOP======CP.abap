* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1739_OSQLLO .
CLASSPOOL_NAME CLASSPOOL_SQL_INSIDE_LOOP .
class-pool.
*"* class pool for class CLASSPOOL_SQL_INSIDE_LOOP

*"* local classes
  include CLASSPOOL_SQL_INSIDE_LOOP======cl.

*"* class CLASSPOOL_SQL_INSIDE_LOOP definition
*"* public declarations
  include CLASSPOOL_SQL_INSIDE_LOOP======cu.
*"* protected declarations
  include CLASSPOOL_SQL_INSIDE_LOOP======co.
*"* private declarations
  include CLASSPOOL_SQL_INSIDE_LOOP======ci.
endclass. "CLASSPOOL_SQL_INSIDE_LOOP definition

class CLASSPOOL_SQL_INSIDE_LOOP implementation.
*"* method's implementations
  include methods.
endclass. "CLASSPOOL_SQL_INSIDE_LOOP implementation

