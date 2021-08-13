CLASS zcl_vmd_company DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    DATA texts TYPE REF TO zcl_vmd_texts .
    DATA extension_id TYPE guid_32 READ-ONLY .

    CLASS-METHODS create_instance
      IMPORTING
        !i_extension_id  TYPE guid_32
      RETURNING
        VALUE(r_company) TYPE REF TO zcl_vmd_company .
    METHODS get_data
      RETURNING
        VALUE(r_company) TYPE REF TO vmds_ei_company .
    METHODS set_task
      IMPORTING
        VALUE(i_task)    TYPE zcl_vmd_util=>t_mode
      RETURNING
        VALUE(r_company) TYPE REF TO zcl_vmd_company .
    METHODS set_data
      IMPORTING
        !i_company       TYPE REF TO vmds_ei_company
      RETURNING
        VALUE(r_company) TYPE REF TO zcl_vmd_company .

    "! <p class="shorttext synchronized" lang="en">Posting block for company code</p>
    METHODS set_sperr IMPORTING  VALUE(i_sperr) TYPE sperb_b RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Deletion Flag for Master Record (Company Code Level)</p>
    METHODS set_loevm IMPORTING  VALUE(i_loevm) TYPE loevm_b RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Key for sorting according to assignment numbers</p>
    METHODS set_zuawa IMPORTING  VALUE(i_zuawa) TYPE dzuawa RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Reconciliation Account in General Ledger</p>
    METHODS set_akont IMPORTING  VALUE(i_akont) TYPE akont RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Authorization Group</p>
    METHODS set_begru IMPORTING  VALUE(i_begru) TYPE brgru RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Interest calculation indicator</p>
    METHODS set_vzskz IMPORTING  VALUE(i_vzskz) TYPE vzskz RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">List of Respected Payment Methods</p>
    METHODS set_zwels IMPORTING  VALUE(i_zwels) TYPE dzwels RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator: Clearing between customer and vendor?</p>
    METHODS set_xverr IMPORTING  VALUE(i_xverr) TYPE xverr_lfb1 RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Block Key for Payment</p>
    METHODS set_zahls IMPORTING  VALUE(i_zahls) TYPE dzahls RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Terms of Payment Key</p>
    METHODS set_zterm IMPORTING  VALUE(i_zterm) TYPE dzterm RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Our account number with the vendor</p>
    METHODS set_eikto IMPORTING  VALUE(i_eikto) TYPE eikto_k RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Clerk at vendor</p>
    METHODS set_zsabe IMPORTING  VALUE(i_zsabe) TYPE dzsabe_k RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Memo</p>
    METHODS set_kverm IMPORTING  VALUE(i_kverm) TYPE kverm RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Planning group</p>
    METHODS set_fdgrv IMPORTING  VALUE(i_fdgrv) TYPE fdgrv RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Accounting Clerk Abbreviation</p>
    METHODS set_busab IMPORTING  VALUE(i_busab) TYPE busab RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Head office account number</p>
    METHODS set_lnrze IMPORTING  VALUE(i_lnrze) TYPE lnrze RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Account number of the alternative payee</p>
    METHODS set_lnrzb IMPORTING  VALUE(i_lnrzb) TYPE lnrzb RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Key Date of Last Interest Calculation</p>
    METHODS set_zindt IMPORTING  VALUE(i_zindt) TYPE dzindt RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Interest Calculation Frequency in Months</p>
    METHODS set_zinrt IMPORTING  VALUE(i_zinrt) TYPE dzinrt RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Date of the last interest calculation run</p>
    METHODS set_datlz IMPORTING  VALUE(i_datlz) TYPE datlz RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator: Local processing?</p>
    METHODS set_xdezv IMPORTING  VALUE(i_xdezv) TYPE xdezv RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Bill of exchange limit (in local currency)</p>
    METHODS set_webtr IMPORTING  VALUE(i_webtr) TYPE webtr RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Probable time until check is paid</p>
    METHODS set_kultg IMPORTING  VALUE(i_kultg) TYPE kultg RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Check Flag for Double Invoices or Credit Memos</p>
    METHODS set_reprf IMPORTING  VALUE(i_reprf) TYPE reprf RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Tolerance group for the business partner/G/L account</p>
    METHODS set_togru IMPORTING  VALUE(i_togru) TYPE togru RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Short Key for a House Bank</p>
    METHODS set_hbkid IMPORTING  VALUE(i_hbkid) TYPE hbkid RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator: Pay all items separately ?</p>
    METHODS set_xpore IMPORTING  VALUE(i_xpore) TYPE xpore RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Certificate Number of the Withholding Tax Exemption</p>
    METHODS set_qsznr IMPORTING  VALUE(i_qsznr) TYPE qsznr RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Validity Date for Withholding Tax Exemption Certificate</p>
    METHODS set_qszdt IMPORTING  VALUE(i_qszdt) TYPE qszdt RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Withholding Tax Code</p>
    METHODS set_qsskz IMPORTING  VALUE(i_qsskz) TYPE qsskz RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Subsidy Indicator for Determining the Reduction Rates</p>
    METHODS set_blnkz IMPORTING  VALUE(i_blnkz) TYPE blnkz RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Minority Indicators</p>
    METHODS set_mindk IMPORTING  VALUE(i_mindk) TYPE mindk RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Previous Master Record Number</p>
    METHODS set_altkn IMPORTING  VALUE(i_altkn) TYPE altkn RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Key for Payment Grouping</p>
    METHODS set_zgrup IMPORTING  VALUE(i_zgrup) TYPE dzgrup RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Key for dunning notice grouping</p>
    METHODS set_mgrup IMPORTING  VALUE(i_mgrup) TYPE mgrup RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Payment method supplement</p>
    METHODS set_uzawe IMPORTING  VALUE(i_uzawe) TYPE uzawe RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Vendor Recipient Type</p>
    METHODS set_qsrec IMPORTING  VALUE(i_qsrec) TYPE qsrec RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Authority for Exemption from Withholding Tax</p>
    METHODS set_qsbgr IMPORTING  VALUE(i_qsbgr) TYPE qsbgr RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Withholding Tax Country Key</p>
    METHODS set_qland IMPORTING  VALUE(i_qland) TYPE qland RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator: Send Payment Advices by EDI</p>
    METHODS set_xedip IMPORTING  VALUE(i_xedip) TYPE xedip RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Release Approval Group</p>
    METHODS set_frgrp IMPORTING  VALUE(i_frgrp) TYPE frgrp RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Accounting clerk's fax number at the customer/vendor</p>
    METHODS set_tlfxs IMPORTING  VALUE(i_tlfxs) TYPE tlfxs RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Internet address of partner company clerk</p>
    METHODS set_intad IMPORTING  VALUE(i_intad) TYPE intad RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Payment Terms Key for Credit Memos</p>
    METHODS set_guzte IMPORTING  VALUE(i_guzte) TYPE guzte RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Activity Code for Gross Income Tax</p>
    METHODS set_gricd IMPORTING  VALUE(i_gricd) TYPE j_1agicd_d RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Distribution Type for Employment Tax</p>
    METHODS set_gridt IMPORTING  VALUE(i_gridt) TYPE j_1adtyp_d RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator for periodic account statements</p>
    METHODS set_xausz IMPORTING  VALUE(i_xausz) TYPE xausz RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Certification date</p>
    METHODS set_cerdt IMPORTING  VALUE(i_cerdt) TYPE cerdt RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Tolerance group; Invoice Verification</p>
    METHODS set_togrr IMPORTING  VALUE(i_togrr) TYPE togrr RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Personnel Number</p>
    METHODS set_pernr IMPORTING  VALUE(i_pernr) TYPE pernr_d RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Deletion bock for master record (company code level)</p>
    METHODS set_nodel IMPORTING  VALUE(i_nodel) TYPE nodel_b RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Accounting clerk's telephone number at business partner</p>
    METHODS set_tlfns IMPORTING  VALUE(i_tlfns) TYPE tlfns RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Prepayment Relevance (Vendor Master)</p>
    METHODS set_prepay_relevant IMPORTING  VALUE(i_prepay_relevant) TYPE wrf_prepay_relevant RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Assignment Test Group</p>
    METHODS set_assign_test IMPORTING  VALUE(i_assign_test) TYPE wrf_mrm_assign_group RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Business Purpose Completed Flag</p>
    METHODS set_cvp_xblck_b IMPORTING  VALUE(i_cvp_xblck_b) TYPE cvp_xblck RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Main economic activity</p>
    METHODS set_ciiucode IMPORTING  VALUE(i_ciiucode) TYPE ciiucode RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .
    "! <p class="shorttext synchronized" lang="en">Indicator: Alternative payee using account number</p>
    METHODS set_xlfzb IMPORTING  VALUE(i_xlfzb) TYPE xlfzb RETURNING VALUE(r_company) TYPE REF TO zcl_vmd_company .



  PROTECTED SECTION.
    DATA: ref_data TYPE REF TO vmds_ei_company.
    METHODS: constructor IMPORTING i_extension_id TYPE guid_32 OPTIONAL.


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_company IMPLEMENTATION.


  METHOD constructor.
    extension_id = i_extension_id.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_company = NEW #(  ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-company ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_extension_id  = i_extension_id.
          r_company ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_company = NEW #(  ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD get_data.
    r_company = ref_data.
  ENDMETHOD.

  METHOD set_data.
    ref_data = i_company.
    texts ?= zcl_vmd_texts=>create_instance( i_extension_id = extension_id i_texts = REF #( ref_data->texts ) ).
    r_company = me.
  ENDMETHOD.

  METHOD set_task.
    ref_data->task = i_task.
    r_company = me.
  ENDMETHOD.

  METHOD set_sperr.    ref_data->data-sperr = i_sperr. ref_data->datax-sperr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_loevm.    ref_data->data-loevm = i_loevm. ref_data->datax-loevm = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zuawa.    ref_data->data-zuawa = i_zuawa. ref_data->datax-zuawa = abap_true . r_company = me. ENDMETHOD.
  METHOD set_akont.    ref_data->data-akont = i_akont. ref_data->datax-akont = abap_true . r_company = me. ENDMETHOD.
  METHOD set_begru.    ref_data->data-begru = i_begru. ref_data->datax-begru = abap_true . r_company = me. ENDMETHOD.
  METHOD set_vzskz.    ref_data->data-vzskz = i_vzskz. ref_data->datax-vzskz = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zwels.    ref_data->data-zwels = i_zwels. ref_data->datax-zwels = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xverr.    ref_data->data-xverr = i_xverr. ref_data->datax-xverr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zahls.    ref_data->data-zahls = i_zahls. ref_data->datax-zahls = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zterm.    ref_data->data-zterm = i_zterm. ref_data->datax-zterm = abap_true . r_company = me. ENDMETHOD.
  METHOD set_eikto.    ref_data->data-eikto = i_eikto. ref_data->datax-eikto = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zsabe.    ref_data->data-zsabe = i_zsabe. ref_data->datax-zsabe = abap_true . r_company = me. ENDMETHOD.
  METHOD set_kverm.    ref_data->data-kverm = i_kverm. ref_data->datax-kverm = abap_true . r_company = me. ENDMETHOD.
  METHOD set_fdgrv.    ref_data->data-fdgrv = i_fdgrv. ref_data->datax-fdgrv = abap_true . r_company = me. ENDMETHOD.
  METHOD set_busab.    ref_data->data-busab = i_busab. ref_data->datax-busab = abap_true . r_company = me. ENDMETHOD.
  METHOD set_lnrze.    ref_data->data-lnrze = i_lnrze. ref_data->datax-lnrze = abap_true . r_company = me. ENDMETHOD.
  METHOD set_lnrzb.    ref_data->data-lnrzb = i_lnrzb. ref_data->datax-lnrzb = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zindt.    ref_data->data-zindt = i_zindt. ref_data->datax-zindt = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zinrt.    ref_data->data-zinrt = i_zinrt. ref_data->datax-zinrt = abap_true . r_company = me. ENDMETHOD.
  METHOD set_datlz.    ref_data->data-datlz = i_datlz. ref_data->datax-datlz = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xdezv.    ref_data->data-xdezv = i_xdezv. ref_data->datax-xdezv = abap_true . r_company = me. ENDMETHOD.
  METHOD set_webtr.    ref_data->data-webtr = i_webtr. ref_data->datax-webtr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_kultg.    ref_data->data-kultg = i_kultg. ref_data->datax-kultg = abap_true . r_company = me. ENDMETHOD.
  METHOD set_reprf.    ref_data->data-reprf = i_reprf. ref_data->datax-reprf = abap_true . r_company = me. ENDMETHOD.
  METHOD set_togru.    ref_data->data-togru = i_togru. ref_data->datax-togru = abap_true . r_company = me. ENDMETHOD.
  METHOD set_hbkid.    ref_data->data-hbkid = i_hbkid. ref_data->datax-hbkid = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xpore.    ref_data->data-xpore = i_xpore. ref_data->datax-xpore = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qsznr.    ref_data->data-qsznr = i_qsznr. ref_data->datax-qsznr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qszdt.    ref_data->data-qszdt = i_qszdt. ref_data->datax-qszdt = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qsskz.    ref_data->data-qsskz = i_qsskz. ref_data->datax-qsskz = abap_true . r_company = me. ENDMETHOD.
  METHOD set_blnkz.    ref_data->data-blnkz = i_blnkz. ref_data->datax-blnkz = abap_true . r_company = me. ENDMETHOD.
  METHOD set_mindk.    ref_data->data-mindk = i_mindk. ref_data->datax-mindk = abap_true . r_company = me. ENDMETHOD.
  METHOD set_altkn.    ref_data->data-altkn = i_altkn. ref_data->datax-altkn = abap_true . r_company = me. ENDMETHOD.
  METHOD set_zgrup.    ref_data->data-zgrup = i_zgrup. ref_data->datax-zgrup = abap_true . r_company = me. ENDMETHOD.
  METHOD set_mgrup.    ref_data->data-mgrup = i_mgrup. ref_data->datax-mgrup = abap_true . r_company = me. ENDMETHOD.
  METHOD set_uzawe.    ref_data->data-uzawe = i_uzawe. ref_data->datax-uzawe = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qsrec.    ref_data->data-qsrec = i_qsrec. ref_data->datax-qsrec = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qsbgr.    ref_data->data-qsbgr = i_qsbgr. ref_data->datax-qsbgr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_qland.    ref_data->data-qland = i_qland. ref_data->datax-qland = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xedip.    ref_data->data-xedip = i_xedip. ref_data->datax-xedip = abap_true . r_company = me. ENDMETHOD.
  METHOD set_frgrp.    ref_data->data-frgrp = i_frgrp. ref_data->datax-frgrp = abap_true . r_company = me. ENDMETHOD.
  METHOD set_tlfxs.    ref_data->data-tlfxs = i_tlfxs. ref_data->datax-tlfxs = abap_true . r_company = me. ENDMETHOD.
  METHOD set_intad.    ref_data->data-intad = i_intad. ref_data->datax-intad = abap_true . r_company = me. ENDMETHOD.
  METHOD set_guzte.    ref_data->data-guzte = i_guzte. ref_data->datax-guzte = abap_true . r_company = me. ENDMETHOD.
  METHOD set_gricd.    ref_data->data-gricd = i_gricd. ref_data->datax-gricd = abap_true . r_company = me. ENDMETHOD.
  METHOD set_gridt.    ref_data->data-gridt = i_gridt. ref_data->datax-gridt = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xausz.    ref_data->data-xausz = i_xausz. ref_data->datax-xausz = abap_true . r_company = me. ENDMETHOD.
  METHOD set_cerdt.    ref_data->data-cerdt = i_cerdt. ref_data->datax-cerdt = abap_true . r_company = me. ENDMETHOD.
  METHOD set_togrr.    ref_data->data-togrr = i_togrr. ref_data->datax-togrr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_pernr.    ref_data->data-pernr = i_pernr. ref_data->datax-pernr = abap_true . r_company = me. ENDMETHOD.
  METHOD set_nodel.    ref_data->data-nodel = i_nodel. ref_data->datax-nodel = abap_true . r_company = me. ENDMETHOD.
  METHOD set_tlfns.    ref_data->data-tlfns = i_tlfns. ref_data->datax-tlfns = abap_true . r_company = me. ENDMETHOD.
  METHOD set_prepay_relevant.    ref_data->data-prepay_relevant = i_prepay_relevant. ref_data->datax-prepay_relevant = abap_true . r_company = me. ENDMETHOD.
  METHOD set_assign_test.    ref_data->data-assign_test = i_assign_test. ref_data->datax-assign_test = abap_true . r_company = me. ENDMETHOD.
  METHOD set_cvp_xblck_b.    ref_data->data-cvp_xblck_b = i_cvp_xblck_b. ref_data->datax-cvp_xblck_b = abap_true . r_company = me. ENDMETHOD.
  METHOD set_ciiucode.    ref_data->data-ciiucode = i_ciiucode. ref_data->datax-ciiucode = abap_true . r_company = me. ENDMETHOD.
  METHOD set_xlfzb.    ref_data->data-xlfzb = i_xlfzb. ref_data->datax-xlfzb = abap_true . r_company = me. ENDMETHOD.

ENDCLASS.
