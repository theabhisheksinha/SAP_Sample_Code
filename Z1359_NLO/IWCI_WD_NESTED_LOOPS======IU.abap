* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
INTERFACEPOOL_NAME IWCI_WD_NESTED_LOOPS .
*=====================================================================*
* Intf.: IWCI_WD_NESTED_LOOPS
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_NESTED_LOOPS>
* UDate: 20050620 182604
*=====================================================================*
interface Iwci_Wd_NESTED_LOOPS public.

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
