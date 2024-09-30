* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
INTERFACEPOOL_NAME IWCI_WD_LOOP_INTO .
*=====================================================================*
* Intf.: IWCI_WD_LOOP_INTO
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_LOOP_INTO>
* UDate: 20050620 182604
*=====================================================================*
interface Iwci_Wd_LOOP_INTO public.

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
