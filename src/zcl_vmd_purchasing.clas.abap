CLASS zcl_vmd_purchasing DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    DATA texts TYPE REF TO zcl_vmd_texts .

    CLASS-METHODS create_instance
      IMPORTING
        !i_extension_id     TYPE guid_32
      RETURNING
        VALUE(r_purchasing) TYPE REF TO zcl_vmd_purchasing .
    METHODS set_task
      IMPORTING
        VALUE(i_task) TYPE zcl_vmd_util=>t_mode .
    METHODS set_data
      IMPORTING
        !i_data TYPE REF TO vmds_ei_purchasing .
    METHODS add_partner_function
      IMPORTING
        VALUE(i_function) TYPE parvw
        VALUE(i_partner)  TYPE gpanr
        VALUE(i_ltsnr)    TYPE ltsnr
        VALUE(i_werks)    TYPE werks_d .
    METHODS delete_partner_function
      IMPORTING
        VALUE(i_function) TYPE parvw
        VALUE(i_partner)  TYPE gpanr OPTIONAL .
    METHODS change_partner_function
      IMPORTING
        VALUE(i_function)    TYPE parvw
        VALUE(i_partner_old) TYPE gpanr
        VALUE(i_partner)     TYPE gpanr
        !i_ltsnr_old         TYPE ltsnr
        !i_ltsnr             TYPE ltsnr
        !i_werks_old         TYPE werks_d
        !i_werks             TYPE werks_d .
    METHODS set_sperm
      IMPORTING
        VALUE(i_sperm) TYPE sperm_m . "Purchasing block at purchasing organization level
    METHODS set_loevm
      IMPORTING
        VALUE(i_loevm) TYPE loevm_m . "Delete flag for vendor at purchasing level
    METHODS set_lfabc
      IMPORTING
        VALUE(i_lfabc) TYPE lfabc . "ABC indicator
    METHODS set_waers
      IMPORTING
        VALUE(i_waers) TYPE bstwa . "Purchase order currency
    METHODS set_verkf
      IMPORTING
        VALUE(i_verkf) TYPE everk . "Responsible Salesperson at Vendor's Office
    METHODS set_telf1
      IMPORTING
        VALUE(i_telf1) TYPE telfe . "Vendor's telephone number
    METHODS set_minbw
      IMPORTING
        VALUE(i_minbw) TYPE minbw . "Minimum order value
    METHODS set_zterm
      IMPORTING
        VALUE(i_zterm) TYPE dzterm . "Terms of Payment Key
    METHODS set_inco1
      IMPORTING
        VALUE(i_inco1) TYPE inco1 . "Incoterms (Part 1)
    METHODS set_inco2
      IMPORTING
        VALUE(i_inco2) TYPE inco2 . "Incoterms (Part 2)
    METHODS set_webre
      IMPORTING
        VALUE(i_webre) TYPE webre . "Indicator: GR-Based Invoice Verification
    METHODS set_kzabs
      IMPORTING
        VALUE(i_kzabs) TYPE kzabs . "Order Acknowledgment Requirement
    METHODS set_kalsk
      IMPORTING
        VALUE(i_kalsk) TYPE kalsk . "Group for Calculation Schema (Vendor)
    METHODS set_kzaut
      IMPORTING
        VALUE(i_kzaut) TYPE kzaut . "Automatic Generation of Purchase Order Allowed
    METHODS set_expvz
      IMPORTING
        VALUE(i_expvz) TYPE expvz . "Mode of Transport for Foreign Trade
    METHODS set_zolla
      IMPORTING
        VALUE(i_zolla) TYPE dzolls . "Customs Office: Office of Exit/Entry for Foreign Trade
    METHODS set_meprf
      IMPORTING
        VALUE(i_meprf) TYPE meprf . "Price Determination (Pricing) Date Control
    METHODS set_ekgrp
      IMPORTING
        VALUE(i_ekgrp) TYPE ekgrp . "Purchasing Group
    METHODS set_bolre
      IMPORTING
        VALUE(i_bolre) TYPE bolre . "Indicator: vendor subject to subseq. settlement accounting
    METHODS set_umsae
      IMPORTING
        VALUE(i_umsae) TYPE umsae . "Comparison/agreement of business volumes necessary
    METHODS set_xersy
      IMPORTING
        VALUE(i_xersy) TYPE xersy . "Evaluated Receipt Settlement (ERS)
    METHODS set_plifz
      IMPORTING
        VALUE(i_plifz) TYPE plifz . "Planned Delivery Time in Days
    METHODS set_mrppp
      IMPORTING
        VALUE(i_mrppp) TYPE mrppp_w . "Planning calendar
    METHODS set_lfrhy
      IMPORTING
        VALUE(i_lfrhy) TYPE lfrhy . "Planning cycle
    METHODS set_libes
      IMPORTING
        VALUE(i_libes) TYPE libes . "Order entry by vendor
    METHODS set_lipre
      IMPORTING
        VALUE(i_lipre) TYPE lipre . "Price marking, vendor
    METHODS set_liser
      IMPORTING
        VALUE(i_liser) TYPE liser . "Rack-jobbing: vendor
    METHODS set_boind
      IMPORTING
        VALUE(i_boind) TYPE boind . "Indicator: index compilation for subseq. settlement active
    METHODS set_prfre
      IMPORTING
        VALUE(i_prfre) TYPE prfre_lh . "Indicator: "relev. to price determination (vend. hierarchy)
    METHODS set_nrgew
      IMPORTING
        VALUE(i_nrgew) TYPE nrgew . "Indicator whether discount in kind granted
    METHODS set_blind
      IMPORTING
        VALUE(i_blind) TYPE blind . "Indicator: Doc. index compilation active for purchase orders
    METHODS set_skrit
      IMPORTING
        VALUE(i_skrit) TYPE skrit . "Vendor sort criterion for materials
    METHODS set_bstae
      IMPORTING
        VALUE(i_bstae) TYPE bstae . "Confirmation Control Key
    METHODS set_rdprf
      IMPORTING
        VALUE(i_rdprf) TYPE rdprf . "Rounding Profile
    METHODS set_megru
      IMPORTING
        VALUE(i_megru) TYPE megru . "Unit of Measure Group
    METHODS set_vensl
      IMPORTING
        VALUE(i_vensl) TYPE vensl . "Vendor service level
    METHODS set_bopnr
      IMPORTING
        VALUE(i_bopnr) TYPE bopnr . "Restriction Profile for PO-Based Load Building
    METHODS set_xersr
      IMPORTING
        VALUE(i_xersr) TYPE xersr . "Automatic evaluated receipt settlement for return items
    METHODS set_eikto
      IMPORTING
        VALUE(i_eikto) TYPE eikto_m . "Our account number with the vendor
    METHODS set_paprf
      IMPORTING
        VALUE(i_paprf) TYPE wvmi_paprf . "Profile for transferring material data via IDoc PROACT
    METHODS set_agrel
      IMPORTING
        VALUE(i_agrel) TYPE agrel . "Indicator: Relevant for agency business
    METHODS set_xnbwy
      IMPORTING
        VALUE(i_xnbwy) TYPE xnbwy . "Revaluation allowed
    METHODS set_vsbed
      IMPORTING
        VALUE(i_vsbed) TYPE vsbed . "Shipping Conditions
    METHODS set_lebre
      IMPORTING
        VALUE(i_lebre) TYPE lebre . "Indicator for Service-Based Invoice Verification
    METHODS set_incov
      IMPORTING
        VALUE(i_incov) TYPE incov . "Incoterms Version
    METHODS set_inco2_l
      IMPORTING
        VALUE(i_inco2_l) TYPE inco2_l . "Incoterms Location 1
    METHODS set_inco3_l
      IMPORTING
        VALUE(i_inco3_l) TYPE inco3_l . "Incoterms Location 2
***
  PROTECTED SECTION.
    DATA: ref_data TYPE REF TO vmds_ei_purchasing.
    DATA: extension_id TYPE guid_32.
    METHODS: contructor IMPORTING i_extension_id TYPE guid_32 OPTIONAL.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_purchasing IMPLEMENTATION.


  METHOD add_partner_function.
    ASSIGN ref_data->functions-functions[ data_key-parvw = i_function
                                          data_key-ltsnr = i_ltsnr "Vendor Subrange
                                          data_key-werks = i_werks
                                          data-partner   = i_partner
                                           ] TO FIELD-SYMBOL(<par>).
    IF sy-subrc NE 0.
      INSERT VALUE #(  data_key-parvw = i_function
                       data_key-ltsnr = i_ltsnr "Vendor Subrange
                       data_key-werks = i_werks
                       data-partner = i_partner
                       task = zcl_vmd_util=>mode-create
                       ) INTO TABLE ref_data->functions-functions ASSIGNING <par>.
      IF sy-subrc EQ 0.
        LOOP AT ref_data->functions-functions ASSIGNING FIELD-SYMBOL(<epar>)
          WHERE data_key-parvw EQ i_function.
          IF <epar>-data_key-parza GT <par>-data_key-parza.
            <par>-data_key-parza = <epar>-data_key-parza.
          ENDIF.
        ENDLOOP.
        ADD 1 TO <par>-data_key-parza.
        IF ref_data->task NE zcl_vmd_util=>mode-create AND
          ref_data->task NE zcl_vmd_util=>mode-delete.
          ref_data->task = zcl_vmd_util=>mode-change.
          ref_data->functions-current_state = zcl_vmd_util=>mode-change.
          ref_data->datax-ekgrp = abap_true.
        ENDIF.

      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD change_partner_function.
    ASSIGN ref_data->functions-functions[ data_key-parvw = i_function
                                          data_key-ltsnr = i_ltsnr_old "Vendor Subrange
                                          data_key-werks = i_werks_old
                                          data-partner   = i_partner_old
                                           ] TO FIELD-SYMBOL(<par>).
    IF sy-subrc EQ 0.
      <par>-task = zcl_vmd_util=>mode-change.
      <par>-data-partner = i_partner.
*      <par>-data-ltsnr = i_ltsnr.
*      <par>-data-WERKS = i_i_WERKS.
      IF ref_data->task NE zcl_vmd_util=>mode-create AND
        ref_data->task NE zcl_vmd_util=>mode-delete.
        ref_data->task = zcl_vmd_util=>mode-change.
        ref_data->functions-current_state = zcl_vmd_util=>mode-change..
        ref_data->datax-ekgrp = abap_true. "vkbur
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD contructor.
    extension_id = i_extension_id.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_purchasing = NEW #( ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-purchase ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name).
          r_purchasing ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_purchasing = NEW #( ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete_partner_function.
    IF i_partner IS NOT INITIAL.
      ASSIGN ref_data->functions-functions[ data_key-parvw = i_function
                                            data-partner   = i_partner
                                             ] TO FIELD-SYMBOL(<par>).
      IF sy-subrc EQ 0.
        <par>-task = zcl_vmd_util=>mode-delete.
        IF ref_data->task NE zcl_vmd_util=>mode-create AND
           ref_data->task NE zcl_vmd_util=>mode-delete.
          ref_data->task = zcl_vmd_util=>mode-change.
          ref_data->functions-current_state = zcl_vmd_util=>mode-change.
          ref_data->datax-ekgrp = abap_true. "vkbur
        ENDIF.
        DELETE ref_data->functions-functions WHERE data_key-parvw = i_function
                                               AND data-partner = i_partner.
      ENDIF.
    ELSE.
      LOOP AT ref_data->functions-functions ASSIGNING <par> WHERE data_key-parvw = i_function.
        <par>-task = zcl_vmd_util=>mode-delete.
        ref_data->functions-current_state = zcl_vmd_util=>mode-change.
        DELETE ref_data->functions-functions.
        ref_data->datax-ekgrp = abap_true. "vkbur
      ENDLOOP.
    ENDIF.

  ENDMETHOD.


  METHOD set_agrel.
    ref_data->data-agrel = i_agrel. ref_data->datax-agrel = abap_true .
  ENDMETHOD.


  METHOD set_blind.
    ref_data->data-blind = i_blind. ref_data->datax-blind = abap_true .
  ENDMETHOD.


  METHOD set_boind.
    ref_data->data-boind = i_boind. ref_data->datax-boind = abap_true .
  ENDMETHOD.


  METHOD set_bolre.
    ref_data->data-bolre = i_bolre. ref_data->datax-bolre = abap_true .
  ENDMETHOD.


  METHOD set_bopnr.
    ref_data->data-bopnr = i_bopnr. ref_data->datax-bopnr = abap_true .
  ENDMETHOD.


  METHOD set_bstae.
    ref_data->data-bstae = i_bstae. ref_data->datax-bstae = abap_true .
  ENDMETHOD.


  METHOD set_data.
    ref_data = i_data.
    texts ?= zcl_vmd_texts=>create_instance( i_extension_id = extension_id i_texts =  REF #( ref_data->texts )  ).
  ENDMETHOD.


  METHOD set_eikto.
    ref_data->data-eikto = i_eikto. ref_data->datax-eikto = abap_true .
  ENDMETHOD.


  METHOD set_ekgrp.
    ref_data->data-ekgrp = i_ekgrp. ref_data->datax-ekgrp = abap_true .
  ENDMETHOD.


  METHOD set_expvz.
    ref_data->data-expvz = i_expvz. ref_data->datax-expvz = abap_true .
  ENDMETHOD.


  METHOD set_inco1.
    ref_data->data-inco1 = i_inco1. ref_data->datax-inco1 = abap_true .
  ENDMETHOD.


  METHOD set_inco2.
    ref_data->data-inco2 = i_inco2. ref_data->datax-inco2 = abap_true .
  ENDMETHOD.


  METHOD set_inco2_l.
    ref_data->data-inco2_l = i_inco2_l. ref_data->datax-inco2_l = abap_true .
  ENDMETHOD.


  METHOD set_inco3_l.
    ref_data->data-inco3_l = i_inco3_l. ref_data->datax-inco3_l = abap_true .
  ENDMETHOD.


  METHOD set_incov.
    ref_data->data-incov = i_incov. ref_data->datax-incov = abap_true .
  ENDMETHOD.


  METHOD set_kalsk.
    ref_data->data-kalsk = i_kalsk. ref_data->datax-kalsk = abap_true .
  ENDMETHOD.


  METHOD set_kzabs.
    ref_data->data-kzabs = i_kzabs. ref_data->datax-kzabs = abap_true .
  ENDMETHOD.


  METHOD set_kzaut.
    ref_data->data-kzaut = i_kzaut. ref_data->datax-kzaut = abap_true .
  ENDMETHOD.


  METHOD set_lebre.
    ref_data->data-lebre = i_lebre. ref_data->datax-lebre = abap_true .
  ENDMETHOD.


  METHOD set_lfabc.
    ref_data->data-lfabc = i_lfabc. ref_data->datax-lfabc = abap_true .
  ENDMETHOD.


  METHOD set_lfrhy.
    ref_data->data-lfrhy = i_lfrhy. ref_data->datax-lfrhy = abap_true .
  ENDMETHOD.


  METHOD set_libes.
    ref_data->data-libes = i_libes. ref_data->datax-libes = abap_true .
  ENDMETHOD.


  METHOD set_lipre.
    ref_data->data-lipre = i_lipre. ref_data->datax-lipre = abap_true .
  ENDMETHOD.


  METHOD set_liser.
    ref_data->data-liser = i_liser. ref_data->datax-liser = abap_true .
  ENDMETHOD.


  METHOD set_loevm.
    ref_data->data-loevm = i_loevm. ref_data->datax-loevm = abap_true .
  ENDMETHOD.


  METHOD set_megru.
    ref_data->data-megru = i_megru. ref_data->datax-megru = abap_true .
  ENDMETHOD.


  METHOD set_meprf.
    ref_data->data-meprf = i_meprf. ref_data->datax-meprf = abap_true .
  ENDMETHOD.


  METHOD set_minbw.
    ref_data->data-minbw = i_minbw. ref_data->datax-minbw = abap_true .
  ENDMETHOD.


  METHOD set_mrppp.
    ref_data->data-mrppp = i_mrppp. ref_data->datax-mrppp = abap_true .
  ENDMETHOD.


  METHOD set_nrgew.
    ref_data->data-nrgew = i_nrgew. ref_data->datax-nrgew = abap_true .
  ENDMETHOD.


  METHOD set_paprf.
    ref_data->data-paprf = i_paprf. ref_data->datax-paprf = abap_true .
  ENDMETHOD.


  METHOD set_plifz.
    ref_data->data-plifz = i_plifz. ref_data->datax-plifz = abap_true .
  ENDMETHOD.


  METHOD set_prfre.
    ref_data->data-prfre = i_prfre. ref_data->datax-prfre = abap_true .
  ENDMETHOD.


  METHOD set_rdprf.
    ref_data->data-rdprf = i_rdprf. ref_data->datax-rdprf = abap_true .
  ENDMETHOD.


  METHOD set_skrit.
    ref_data->data-skrit = i_skrit. ref_data->datax-skrit = abap_true .
  ENDMETHOD.


  METHOD set_sperm.
    ref_data->data-sperm = i_sperm. ref_data->datax-sperm = abap_true .
  ENDMETHOD.


  METHOD set_task.
    ref_data->task = i_task.
  ENDMETHOD.


  METHOD set_telf1.
    ref_data->data-telf1 = i_telf1. ref_data->datax-telf1 = abap_true .
  ENDMETHOD.


  METHOD set_umsae.
    ref_data->data-umsae = i_umsae. ref_data->datax-umsae = abap_true .
  ENDMETHOD.


  METHOD set_vensl.
    ref_data->data-vensl = i_vensl. ref_data->datax-vensl = abap_true .
  ENDMETHOD.


  METHOD set_verkf.
    ref_data->data-verkf = i_verkf. ref_data->datax-verkf = abap_true .
  ENDMETHOD.


  METHOD set_vsbed.
    ref_data->data-vsbed = i_vsbed. ref_data->datax-vsbed = abap_true .
  ENDMETHOD.


  METHOD set_waers.
    ref_data->data-waers = i_waers. ref_data->datax-waers = abap_true .
  ENDMETHOD.


  METHOD set_webre.
    ref_data->data-webre = i_webre. ref_data->datax-webre = abap_true .
  ENDMETHOD.


  METHOD set_xersr.
    ref_data->data-xersr = i_xersr. ref_data->datax-xersr = abap_true .
  ENDMETHOD.


  METHOD set_xersy.
    ref_data->data-xersy = i_xersy. ref_data->datax-xersy = abap_true .
  ENDMETHOD.


  METHOD set_xnbwy.
    ref_data->data-xnbwy = i_xnbwy. ref_data->datax-xnbwy = abap_true .
  ENDMETHOD.


  METHOD set_zolla.
    ref_data->data-zolla = i_zolla. ref_data->datax-zolla = abap_true .
  ENDMETHOD.


  METHOD set_zterm.
    ref_data->data-zterm = i_zterm. ref_data->datax-zterm = abap_true .
  ENDMETHOD.
ENDCLASS.
