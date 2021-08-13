"! <p class="shorttext synchronized" lang="en">Vendor Central Data Object</p>
CLASS zcl_vmd_central DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    CLASS-METHODS create_instance
      IMPORTING
        !i_extension_id  TYPE guid_32
        !i_data          TYPE REF TO vmds_ei_vmd_central_data
        !i_datax         TYPE REF TO vmds_ei_vmd_central_data_xflag
      RETURNING
        VALUE(r_central) TYPE REF TO zcl_vmd_central .
    METHODS set_data
      IMPORTING
        !i_data TYPE REF TO vmds_ei_vmd_central_data .
    METHODS get_data
      EXPORTING
        !e_data  TYPE REF TO vmds_ei_vmd_central_data
        !e_datax TYPE REF TO vmds_ei_vmd_central_data_xflag .

    "! <p class="shorttext synchronized" lang="en">Train station</p>
    METHODS set_bahns IMPORTING  VALUE(i_bahns) TYPE bahns.
    "! <p class="shorttext synchronized" lang="en">International location number  (part 1)</p>
    METHODS set_bbbnr IMPORTING  VALUE(i_bbbnr) TYPE bbbnr.
    "! <p class="shorttext synchronized" lang="en">International location number (Part 2)</p>
    METHODS set_bbsnr IMPORTING  VALUE(i_bbsnr) TYPE bbsnr.
    "! <p class="shorttext synchronized" lang="en">Authorization Group</p>
    METHODS set_begru IMPORTING  VALUE(i_begru) TYPE brgru.
    "! <p class="shorttext synchronized" lang="en">Industry key</p>
    METHODS set_brsch IMPORTING  VALUE(i_brsch) TYPE brsch.
    "! <p class="shorttext synchronized" lang="en">Check digit for the international location number</p>
    METHODS set_bubkz IMPORTING  VALUE(i_bubkz) TYPE bubkz.
    "! <p class="shorttext synchronized" lang="en">Report key for data medium exchange</p>
    METHODS set_dtams IMPORTING  VALUE(i_dtams) TYPE dtams.
    "! <p class="shorttext synchronized" lang="en">Instruction key for data medium exchange</p>
    METHODS set_dtaws IMPORTING  VALUE(i_dtaws) TYPE dtaws.
    "! <p class="shorttext synchronized" lang="en">ISR subscriber number</p>
    METHODS set_esrnr IMPORTING  VALUE(i_esrnr) TYPE esrnr.
    "! <p class="shorttext synchronized" lang="en">Group key</p>
    METHODS set_konzs IMPORTING  VALUE(i_konzs) TYPE konzs.
    "! <p class="shorttext synchronized" lang="en">Supplier Account Group</p>
    METHODS set_ktokk IMPORTING  VALUE(i_ktokk) TYPE ktokk.
    "! <p class="shorttext synchronized" lang="en">Customer Number</p>
    METHODS set_kunnr IMPORTING  VALUE(i_kunnr) TYPE kunnr.
    "! <p class="shorttext synchronized" lang="en">Account Number of the Alternative Payee</p>
    METHODS set_lnrza IMPORTING  VALUE(i_lnrza) TYPE lnrza.
    "! <p class="shorttext synchronized" lang="en">Central Deletion Flag for Master Record</p>
    METHODS set_loevm IMPORTING  VALUE(i_loevm) TYPE loevm_x.
    "! <p class="shorttext synchronized" lang="en">Central posting block</p>
    METHODS set_sperr IMPORTING  VALUE(i_sperr) TYPE sperb_x.
    "! <p class="shorttext synchronized" lang="en">Centrally imposed purchasing block</p>
    METHODS set_sperm IMPORTING  VALUE(i_sperm) TYPE sperm_x.
    "! <p class="shorttext synchronized" lang="en">Tax Number 1</p>
    METHODS set_stcd1 IMPORTING  VALUE(i_stcd1) TYPE stcd1.
    "! <p class="shorttext synchronized" lang="en">Tax Number 2</p>
    METHODS set_stcd2 IMPORTING  VALUE(i_stcd2) TYPE stcd2.
    "! <p class="shorttext synchronized" lang="en">Indicator: Business Partner Subject to Equalization Tax?</p>
    METHODS set_stkza IMPORTING  VALUE(i_stkza) TYPE stkza.
    "! <p class="shorttext synchronized" lang="en">Liable for VAT</p>
    METHODS set_stkzu IMPORTING  VALUE(i_stkzu) TYPE stkzu.
    "! <p class="shorttext synchronized" lang="en">Indicator: Alternative payee in document allowed ?</p>
    METHODS set_xzemp IMPORTING  VALUE(i_xzemp) TYPE xzemp.
    "! <p class="shorttext synchronized" lang="en">Company ID of Trading Partner</p>
    METHODS set_vbund IMPORTING  VALUE(i_vbund) TYPE rassc.
    "! <p class="shorttext synchronized" lang="en">Account number of the master record with fiscal address</p>
    METHODS set_fiskn IMPORTING  VALUE(i_fiskn) TYPE fiskn_k.
    "! <p class="shorttext synchronized" lang="en">VAT Registration Number</p>
    METHODS set_stceg IMPORTING  VALUE(i_stceg) TYPE stceg.
    "! <p class="shorttext synchronized" lang="en">Natural Person</p>
    METHODS set_stkzn IMPORTING  VALUE(i_stkzn) TYPE stkzn.
    "! <p class="shorttext synchronized" lang="en">Function That Will Be Blocked</p>
    METHODS set_sperq IMPORTING  VALUE(i_sperq) TYPE qsperrfkt.
    "! <p class="shorttext synchronized" lang="en">Address</p>
    METHODS set_adrnr IMPORTING  VALUE(i_adrnr) TYPE adrnr.
    "! <p class="shorttext synchronized" lang="en">Place of birth of the person subject to withholding tax</p>
    METHODS set_gbort IMPORTING  VALUE(i_gbort) TYPE gbort_q.
    "! <p class="shorttext synchronized" lang="en">Date of Birth</p>
    METHODS set_gbdat IMPORTING  VALUE(i_gbdat) TYPE gbdat.
    "! <p class="shorttext synchronized" lang="en">Key for the Sex of the Person Subject to Withholding Tax</p>
    METHODS set_sexkz IMPORTING  VALUE(i_sexkz) TYPE sexkz.
    "! <p class="shorttext synchronized" lang="en">Credit information number</p>
    METHODS set_kraus IMPORTING  VALUE(i_kraus) TYPE kraus_cm.
    "! <p class="shorttext synchronized" lang="en">Last review (external)</p>
    METHODS set_revdb IMPORTING  VALUE(i_revdb) TYPE revdb_cm.
    "! <p class="shorttext synchronized" lang="en">Vendor's QM system</p>
    METHODS set_qssys IMPORTING  VALUE(i_qssys) TYPE qssys_ist.
    "! <p class="shorttext synchronized" lang="en">Reference Account Group for One-Time Account (Vendor)</p>
    METHODS set_ktock IMPORTING  VALUE(i_ktock) TYPE ktock.
    "! <p class="shorttext synchronized" lang="en">Plant</p>
    METHODS set_werks IMPORTING  VALUE(i_werks) TYPE werks_d.
    "! <p class="shorttext synchronized" lang="en">Indicator: vendor sub-range relevant</p>
    METHODS set_ltsna IMPORTING  VALUE(i_ltsna) TYPE ltsna.
    "! <p class="shorttext synchronized" lang="en">Indicator: plant level relevant</p>
    METHODS set_werkr IMPORTING  VALUE(i_werkr) TYPE werkr.
    "! <p class="shorttext synchronized" lang="en">Factory calendar key</p>
    METHODS set_plkal IMPORTING  VALUE(i_plkal) TYPE fabkl.
    "! <p class="shorttext synchronized" lang="en">Standard carrier access code</p>
    METHODS set_scacd IMPORTING  VALUE(i_scacd) TYPE scacd.
    "! <p class="shorttext synchronized" lang="en">Forwarding agent freight group</p>
    METHODS set_sfrgr IMPORTING  VALUE(i_sfrgr) TYPE sfrgr.
    "! <p class="shorttext synchronized" lang="en">Service agent procedure group</p>
    METHODS set_dlgrp IMPORTING  VALUE(i_dlgrp) TYPE dlgrp.
    "! <p class="shorttext synchronized" lang="en">Tax type</p>
    METHODS set_fityp IMPORTING  VALUE(i_fityp) TYPE j_1afitp_d.
    "! <p class="shorttext synchronized" lang="en">Tax Number Type</p>
    METHODS set_stcdt IMPORTING  VALUE(i_stcdt) TYPE j_1atoid.
    "! <p class="shorttext synchronized" lang="en">Registered for Social Insurance</p>
    METHODS set_regss IMPORTING  VALUE(i_regss) TYPE j_1aregss.
    "! <p class="shorttext synchronized" lang="en">Activity Code for Social Insurance</p>
    METHODS set_actss IMPORTING  VALUE(i_actss) TYPE j_1aactss.
    "! <p class="shorttext synchronized" lang="en">Tax Number 3</p>
    METHODS set_stcd3 IMPORTING  VALUE(i_stcd3) TYPE stcd3.
    "! <p class="shorttext synchronized" lang="en">Tax Number 4</p>
    METHODS set_stcd4 IMPORTING  VALUE(i_stcd4) TYPE stcd4.
    "! <p class="shorttext synchronized" lang="en">Tax Split</p>
    METHODS set_ipisp IMPORTING  VALUE(i_ipisp) TYPE j_1bindequ.
    "! <p class="shorttext synchronized" lang="en">Tax Base in Percentage</p>
    METHODS set_taxbs IMPORTING  VALUE(i_taxbs) TYPE taxbs.
    "! <p class="shorttext synchronized" lang="en">Profession</p>
    METHODS set_profs IMPORTING  VALUE(i_profs) TYPE profs.
    "! <p class="shorttext synchronized" lang="en">Shipment: statistics group, transportation service agent</p>
    METHODS set_stgdl IMPORTING  VALUE(i_stgdl) TYPE stgdl.
    "! <p class="shorttext synchronized" lang="en">External manufacturer code name or number</p>
    METHODS set_emnfr IMPORTING  VALUE(i_emnfr) TYPE emnfr.
    "! <p class="shorttext synchronized" lang="en">Central deletion block for master record</p>
    METHODS set_nodel IMPORTING  VALUE(i_nodel) TYPE nodel_x.
    "! <p class="shorttext synchronized" lang="en">Name of Representative</p>
    METHODS set_j_1kfrepre IMPORTING  VALUE(i_j_1kfrepre) TYPE repres.
    "! <p class="shorttext synchronized" lang="en">Type of Business</p>
    METHODS set_j_1kftbus IMPORTING  VALUE(i_j_1kftbus) TYPE gestyp.
    "! <p class="shorttext synchronized" lang="en">Type of Industry</p>
    METHODS set_j_1kftind IMPORTING  VALUE(i_j_1kftind) TYPE indtyp.
    "! <p class="shorttext synchronized" lang="en">Validity date of certification</p>
    METHODS set_qssysdat IMPORTING  VALUE(i_qssysdat) TYPE qqssysdat.
    "! <p class="shorttext synchronized" lang="en">Vendor indicator relevant for proof of delivery</p>
    METHODS set_podkzb IMPORTING  VALUE(i_podkzb) TYPE podkzb.
    "! <p class="shorttext synchronized" lang="en">Account Number of Master Record of Tax Office Responsible</p>
    METHODS set_fisku IMPORTING  VALUE(i_fisku) TYPE fisku.
    "! <p class="shorttext synchronized" lang="en">Tax Number at Responsible Tax Authority</p>
    METHODS set_stenr IMPORTING  VALUE(i_stenr) TYPE stenr.
    "! <p class="shorttext synchronized" lang="en">Tax Number 5</p>
    METHODS set_stcd5 IMPORTING  VALUE(i_stcd5) TYPE stcd5.
    "! <p class="shorttext synchronized" lang="en">Tax Number 6</p>
    METHODS set_stcd6 IMPORTING  VALUE(i_stcd6) TYPE stcd6.
    "! <p class="shorttext synchronized" lang="en">Business Purpose Completed Flag</p>
    METHODS set_cvp_xblck IMPORTING  VALUE(i_cvp_xblck) TYPE cvp_xblck.
    "! <p class="shorttext synchronized" lang="en">RG Number</p>
    METHODS set_rg IMPORTING  VALUE(i_rg) TYPE j_1brg.
    "! <p class="shorttext synchronized" lang="en">Issued by</p>
    METHODS set_exp IMPORTING  VALUE(i_exp) TYPE j_1bexp.
    "! <p class="shorttext synchronized" lang="en">State</p>
    METHODS set_uf IMPORTING  VALUE(i_uf) TYPE j_1buf.
    "! <p class="shorttext synchronized" lang="en">RG Issuing Date</p>
    METHODS set_rgdate IMPORTING  VALUE(i_rgdate) TYPE j_1brgdate.
    "! <p class="shorttext synchronized" lang="en">RIC Number</p>
    METHODS set_ric IMPORTING  VALUE(i_ric) TYPE j_1bric.
    "! <p class="shorttext synchronized" lang="en">Foreign National Registration</p>
    METHODS set_rne IMPORTING  VALUE(i_rne) TYPE j_1brne.
    "! <p class="shorttext synchronized" lang="en">RNE Issuing Date</p>
    METHODS set_rnedate IMPORTING  VALUE(i_rnedate) TYPE j_1brnedate.
    "! <p class="shorttext synchronized" lang="en">CNAE</p>
    METHODS set_cnae IMPORTING  VALUE(i_cnae) TYPE j_1bcnae.
    "! <p class="shorttext synchronized" lang="en">Legal Nature</p>
    METHODS set_legalnat IMPORTING  VALUE(i_legalnat) TYPE j_1blegalnat.
    "! <p class="shorttext synchronized" lang="en">CRT Number</p>
    METHODS set_crtn IMPORTING  VALUE(i_crtn) TYPE j_1bcrtn.
    "! <p class="shorttext synchronized" lang="en">ICMS Taxpayer</p>
    METHODS set_icmstaxpay IMPORTING  VALUE(i_icmstaxpay) TYPE j_1bicmstaxpay.
    "! <p class="shorttext synchronized" lang="en">Industry Main Type</p>
    METHODS set_indtyp IMPORTING  VALUE(i_indtyp) TYPE j_1bindtyp.
    "! <p class="shorttext synchronized" lang="en">Tax Declaration Type</p>
    METHODS set_tdt IMPORTING  VALUE(i_tdt) TYPE j_1btdt.
    "! <p class="shorttext synchronized" lang="en">Company Size</p>
    METHODS set_comsize IMPORTING  VALUE(i_comsize) TYPE j_1bcomsize.
    "! <p class="shorttext synchronized" lang="en">Indicator: Alternative payee using account number</p>
    METHODS set_xlfza IMPORTING  VALUE(i_xlfza) TYPE xlfza.
    "! <p class="shorttext synchronized" lang="en">Declaration Regimen for PIS/COFINS</p>
    METHODS set_decregpc IMPORTING  VALUE(i_decregpc) TYPE j_1bdecregpc.

  PROTECTED SECTION.

    DATA:
      data  TYPE REF TO vmds_ei_vmd_central_data,
      datax TYPE REF TO vmds_ei_vmd_central_data_xflag.

    METHODS: constructor IMPORTING i_data  TYPE REF TO vmds_ei_vmd_central_data
                                   i_datax TYPE REF TO vmds_ei_vmd_central_data_xflag.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_central IMPLEMENTATION.


  METHOD constructor.
    data = i_data.
    datax = i_datax.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_central = NEW #( i_data = i_data
                         i_datax =  i_datax ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(subclass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-central ).
          CREATE OBJECT subclass TYPE (subclass_abs_name)
           EXPORTING
            i_data = i_data
            i_datax =  i_datax.
          r_central ?= subclass.
        CATCH: zcx_vmd_no_extension.
          r_central = NEW #( i_data = i_data
                       i_datax =  i_datax ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD get_data.
    e_data = data.
    e_datax = datax.
  ENDMETHOD.

  METHOD set_data.
    data = i_data.
  ENDMETHOD.

  METHOD set_bahns.    data->bahns = i_bahns. datax->bahns = abap_true . ENDMETHOD.
  METHOD set_bbbnr.    data->bbbnr = i_bbbnr. datax->bbbnr = abap_true . ENDMETHOD.
  METHOD set_bbsnr.    data->bbsnr = i_bbsnr. datax->bbsnr = abap_true . ENDMETHOD.
  METHOD set_begru.    data->begru = i_begru. datax->begru = abap_true . ENDMETHOD.
  METHOD set_brsch.    data->brsch = i_brsch. datax->brsch = abap_true . ENDMETHOD.
  METHOD set_bubkz.    data->bubkz = i_bubkz. datax->bubkz = abap_true . ENDMETHOD.
  METHOD set_dtams.    data->dtams = i_dtams. datax->dtams = abap_true . ENDMETHOD.
  METHOD set_dtaws.    data->dtaws = i_dtaws. datax->dtaws = abap_true . ENDMETHOD.
  METHOD set_esrnr.    data->esrnr = i_esrnr. datax->esrnr = abap_true . ENDMETHOD.
  METHOD set_konzs.    data->konzs = i_konzs. datax->konzs = abap_true . ENDMETHOD.
  METHOD set_ktokk.    data->ktokk = i_ktokk. datax->ktokk = abap_true . ENDMETHOD.
  METHOD set_kunnr.    data->kunnr = i_kunnr. datax->kunnr = abap_true . ENDMETHOD.
  METHOD set_lnrza.    data->lnrza = i_lnrza. datax->lnrza = abap_true . ENDMETHOD.
  METHOD set_loevm.    data->loevm = i_loevm. datax->loevm = abap_true . ENDMETHOD.
  METHOD set_sperr.    data->sperr = i_sperr. datax->sperr = abap_true . ENDMETHOD.
  METHOD set_sperm.    data->sperm = i_sperm. datax->sperm = abap_true . ENDMETHOD.
  METHOD set_stcd1.    data->stcd1 = i_stcd1. datax->stcd1 = abap_true . ENDMETHOD.
  METHOD set_stcd2.    data->stcd2 = i_stcd2. datax->stcd2 = abap_true . ENDMETHOD.
  METHOD set_stkza.    data->stkza = i_stkza. datax->stkza = abap_true . ENDMETHOD.
  METHOD set_stkzu.    data->stkzu = i_stkzu. datax->stkzu = abap_true . ENDMETHOD.
  METHOD set_xzemp.    data->xzemp = i_xzemp. datax->xzemp = abap_true . ENDMETHOD.
  METHOD set_vbund.    data->vbund = i_vbund. datax->vbund = abap_true . ENDMETHOD.
  METHOD set_fiskn.    data->fiskn = i_fiskn. datax->fiskn = abap_true . ENDMETHOD.
  METHOD set_stceg.    data->stceg = i_stceg. datax->stceg = abap_true . ENDMETHOD.
  METHOD set_stkzn.    data->stkzn = i_stkzn. datax->stkzn = abap_true . ENDMETHOD.
  METHOD set_sperq.    data->sperq = i_sperq. datax->sperq = abap_true . ENDMETHOD.
  METHOD set_adrnr.    data->adrnr = i_adrnr. datax->adrnr = abap_true . ENDMETHOD.
  METHOD set_gbort.    data->gbort = i_gbort. datax->gbort = abap_true . ENDMETHOD.
  METHOD set_gbdat.    data->gbdat = i_gbdat. datax->gbdat = abap_true . ENDMETHOD.
  METHOD set_sexkz.    data->sexkz = i_sexkz. datax->sexkz = abap_true . ENDMETHOD.
  METHOD set_kraus.    data->kraus = i_kraus. datax->kraus = abap_true . ENDMETHOD.
  METHOD set_revdb.    data->revdb = i_revdb. datax->revdb = abap_true . ENDMETHOD.
  METHOD set_qssys.    data->qssys = i_qssys. datax->qssys = abap_true . ENDMETHOD.
  METHOD set_ktock.    data->ktock = i_ktock. datax->ktock = abap_true . ENDMETHOD.
  METHOD set_werks.    data->werks = i_werks. datax->werks = abap_true . ENDMETHOD.
  METHOD set_ltsna.    data->ltsna = i_ltsna. datax->ltsna = abap_true . ENDMETHOD.
  METHOD set_werkr.    data->werkr = i_werkr. datax->werkr = abap_true . ENDMETHOD.
  METHOD set_plkal.    data->plkal = i_plkal. datax->plkal = abap_true . ENDMETHOD.
  METHOD set_scacd.    data->scacd = i_scacd. datax->scacd = abap_true . ENDMETHOD.
  METHOD set_sfrgr.    data->sfrgr = i_sfrgr. datax->sfrgr = abap_true . ENDMETHOD.
  METHOD set_dlgrp.    data->dlgrp = i_dlgrp. datax->dlgrp = abap_true . ENDMETHOD.
  METHOD set_fityp.    data->fityp = i_fityp. datax->fityp = abap_true . ENDMETHOD.
  METHOD set_stcdt.    data->stcdt = i_stcdt. datax->stcdt = abap_true . ENDMETHOD.
  METHOD set_regss.    data->regss = i_regss. datax->regss = abap_true . ENDMETHOD.
  METHOD set_actss.    data->actss = i_actss. datax->actss = abap_true . ENDMETHOD.
  METHOD set_stcd3.    data->stcd3 = i_stcd3. datax->stcd3 = abap_true . ENDMETHOD.
  METHOD set_stcd4.    data->stcd4 = i_stcd4. datax->stcd4 = abap_true . ENDMETHOD.
  METHOD set_ipisp.    data->ipisp = i_ipisp. datax->ipisp = abap_true . ENDMETHOD.
  METHOD set_taxbs.    data->taxbs = i_taxbs. datax->taxbs = abap_true . ENDMETHOD.
  METHOD set_profs.    data->profs = i_profs. datax->profs = abap_true . ENDMETHOD.
  METHOD set_stgdl.    data->stgdl = i_stgdl. datax->stgdl = abap_true . ENDMETHOD.
  METHOD set_emnfr.    data->emnfr = i_emnfr. datax->emnfr = abap_true . ENDMETHOD.
  METHOD set_nodel.    data->nodel = i_nodel. datax->nodel = abap_true . ENDMETHOD.
  METHOD set_j_1kfrepre.    data->j_1kfrepre = i_j_1kfrepre. datax->j_1kfrepre = abap_true . ENDMETHOD.
  METHOD set_j_1kftbus.    data->j_1kftbus = i_j_1kftbus. datax->j_1kftbus = abap_true . ENDMETHOD.
  METHOD set_j_1kftind.    data->j_1kftind = i_j_1kftind. datax->j_1kftind = abap_true . ENDMETHOD.
  METHOD set_qssysdat.    data->qssysdat = i_qssysdat. datax->qssysdat = abap_true . ENDMETHOD.
  METHOD set_podkzb.    data->podkzb = i_podkzb. datax->podkzb = abap_true . ENDMETHOD.
  METHOD set_fisku.    data->fisku = i_fisku. datax->fisku = abap_true . ENDMETHOD.
  METHOD set_stenr.    data->stenr = i_stenr. datax->stenr = abap_true . ENDMETHOD.
  METHOD set_stcd5.    data->stcd5 = i_stcd5. datax->stcd5 = abap_true . ENDMETHOD.
  METHOD set_stcd6.    data->stcd6 = i_stcd6. datax->stcd6 = abap_true . ENDMETHOD.
  METHOD set_cvp_xblck.    data->cvp_xblck = i_cvp_xblck. datax->cvp_xblck = abap_true . ENDMETHOD.
  METHOD set_rg.    data->rg = i_rg. datax->rg = abap_true . ENDMETHOD.
  METHOD set_exp.    data->exp = i_exp. datax->exp = abap_true . ENDMETHOD.
  METHOD set_uf.    data->uf = i_uf. datax->uf = abap_true . ENDMETHOD.
  METHOD set_rgdate.    data->rgdate = i_rgdate. datax->rgdate = abap_true . ENDMETHOD.
  METHOD set_ric.    data->ric = i_ric. datax->ric = abap_true . ENDMETHOD.
  METHOD set_rne.    data->rne = i_rne. datax->rne = abap_true . ENDMETHOD.
  METHOD set_rnedate.    data->rnedate = i_rnedate. datax->rnedate = abap_true . ENDMETHOD.
  METHOD set_cnae.    data->cnae = i_cnae. datax->cnae = abap_true . ENDMETHOD.
  METHOD set_legalnat.    data->legalnat = i_legalnat. datax->legalnat = abap_true . ENDMETHOD.
  METHOD set_crtn.    data->crtn = i_crtn. datax->crtn = abap_true . ENDMETHOD.
  METHOD set_icmstaxpay.    data->icmstaxpay = i_icmstaxpay. datax->icmstaxpay = abap_true . ENDMETHOD.
  METHOD set_indtyp.    data->indtyp = i_indtyp. datax->indtyp = abap_true . ENDMETHOD.
  METHOD set_tdt.    data->tdt = i_tdt. datax->tdt = abap_true . ENDMETHOD.
  METHOD set_comsize.    data->comsize = i_comsize. datax->comsize = abap_true . ENDMETHOD.
  METHOD set_xlfza.    data->xlfza = i_xlfza. datax->xlfza = abap_true . ENDMETHOD.
  METHOD set_decregpc.    data->decregpc = i_decregpc. datax->decregpc = abap_true . ENDMETHOD.
ENDCLASS.
