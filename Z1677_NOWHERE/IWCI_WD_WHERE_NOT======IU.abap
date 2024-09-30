* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1677_NOWHERE .
INTERFACEPOOL_NAME IWCI_WD_WHERE_NOT .
*=====================================================================*
* Intf.: IWCI_WD_WHERE_NOT
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_WHERE_NOT>
* UDate: 20050620 182604
*=====================================================================*
interface Iwci_Wd_WHERE_NOT public.

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
