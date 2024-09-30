* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
INTERFACEPOOL_NAME IWCI_WD_SYNTAX_CHECK .
*=====================================================================*
* Intf.: IWCI_WD_SYNTAX_CHECK
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_SYNTAX_CHECK>
* UDate: 20050620 182604
*=====================================================================*
interface Iwci_Wd_SYNTAX_CHECK public.

* +-------------------------------------------------------------------+
* |  context type definitions                                         |
* +-------------------------------------------------------------------+

********
* @Returns:  controller runtime interface
********
  methods Wd_Get_Api
    returning
      value(Result) type ref to IF_WD_CONTROLLER.


endinterface.
