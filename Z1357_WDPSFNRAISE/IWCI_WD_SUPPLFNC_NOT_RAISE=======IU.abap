* extractor_prog_Version 6.2 for SAP 4.7, ECC5, ECC6.
* DATE 20090422 .
* SAP_Version 700 .
* Dev_Class Z1357_WDPSFNRAISE .
INTERFACEPOOL_NAME IWCI_WD_SUPPLFNC_NOT_RAISE .
*=====================================================================*
* Intf.: IWCI_WD_SUPPLFNC_NOT_RAISE
* Purp.: programming interface for Web Dynpro cross component usage of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <Wd_SUPPLFNC_NOT_RAISE>
* UDate: 20050620 182604
*=====================================================================*
interface IWCI_WD_SUPPLFNC_NOT_RAISE public.

* +-------------------------------------------------------------------+
* |  context type definitions                                         |
* +-------------------------------------------------------------------+

********
* @Returns:  controller runtime interface
********
  methods METH_WD_NOT_RAISE_OK2
    returning
      value(SY-SUBRC) type i.
      
  methods METH_WD_NOT_RAISE_KO2
    returning
      value(SY-SUBRC)type i.

endinterface.
