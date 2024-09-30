* extractor_prog_Version 6.2 for SAP 4.7, ECC5, ECC6.
* DATE 20090422 .
* SAP_Version 700 .
* Dev_Class Z1731_WDPNUSEME .
INTERFACEPOOL_NAME IWCI_WD_NEVER_USE_ME .
*=====================================================================*
* Intf.: IWCI_WD_TPL
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_NEVER_USE_ME>
* UDate: 20050620 182604
*=====================================================================*
interface IWCI_WD_NEVER_USE_ME public.

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
