"! <p class="shorttext synchronized" lang="en">Vendor Contact Object</p>
CLASS zcl_vmd_contact DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    DATA contact TYPE knvp-parnr READ-ONLY .
    DATA vendor TYPE knvp-lifnr .
    DATA mode TYPE zcl_vmd_util=>t_mode READ-ONLY .
    "data TEXTS type ref to ZCL_VMD_TEXTS .

    CLASS-METHODS create_instance
      IMPORTING
        !i_extension_id TYPE guid_32
        !i_contact      TYPE knvp-parnr OPTIONAL
        !i_vendor       TYPE knvp-lifnr
      RETURNING
        VALUE(contact)  TYPE REF TO zcl_vmd_contact
      RAISING
        zcx_vmd_vendor .
    "! Manually set all structures and pass them here
    METHODS set_data
      IMPORTING
        !i_full_data TYPE REF TO vmds_ei_contacts .
    "! Returns Contact structure which can be added to VMDS_ei_contacts_t
    METHODS get_data
      RETURNING
        VALUE(r_full_data) TYPE REF TO vmds_ei_contacts .
    "!Sets mode to "Delete" and clears all structures
    METHODS delete .
    "! Private addres
    METHODS set_address_private
      IMPORTING
        VALUE(i_address) TYPE cvis_ei_address2 .
    "! Address of Organization
    METHODS set_address_org
      IMPORTING
        VALUE(i_address) TYPE cvis_ei_address1 .
    "! Contact person address
    METHODS set_address
      IMPORTING
        VALUE(i_address) TYPE cvis_ei_address3 .
    METHODS set_mode
      IMPORTING
        !i_mode TYPE zcl_vmd_util=>t_mode .
    METHODS set_addr_vers
      IMPORTING
        VALUE(i_addr_vers) TYPE bapiad3vl-addr_vers .
    METHODS set_addr_from_date
      IMPORTING
        VALUE(i_from_date) TYPE bapiad3vl-from_date .
    METHODS set_addr_to_date
      IMPORTING
        VALUE(i_to_date) TYPE bapiad3vl-to_date .
    METHODS set_addr_title_p
      IMPORTING
        VALUE(i_title_p) TYPE bapiad3vl-title_p .
    METHODS set_addr_firstname
      IMPORTING
        VALUE(i_firstname) TYPE bapiad3vl-firstname .
    METHODS set_addr_lastname
      IMPORTING
        VALUE(i_lastname) TYPE bapiad3vl-lastname .
    METHODS set_addr_birth_name
      IMPORTING
        VALUE(i_birth_name) TYPE bapiad3vl-birth_name .
    METHODS set_addr_middlename
      IMPORTING
        VALUE(i_middlename) TYPE bapiad3vl-middlename .
    METHODS set_addr_secondname
      IMPORTING
        VALUE(i_secondname) TYPE bapiad3vl-secondname .
    METHODS set_addr_fullname
      IMPORTING
        VALUE(i_fullname) TYPE bapiad3vl-fullname .
    METHODS set_addr_fullname_x
      IMPORTING
        VALUE(i_fullname_x) TYPE bapiad3vl-fullname_x .
    METHODS set_addr_title_aca1
      IMPORTING
        VALUE(i_title_aca1) TYPE bapiad3vl-title_aca1 .
    METHODS set_addr_title_aca2
      IMPORTING
        VALUE(i_title_aca2) TYPE bapiad3vl-title_aca2 .
    METHODS set_addr_prefix1
      IMPORTING
        VALUE(i_prefix1) TYPE bapiad3vl-prefix1 .
    METHODS set_addr_prefix2
      IMPORTING
        VALUE(i_prefix2) TYPE bapiad3vl-prefix2 .
    METHODS set_addr_title_sppl
      IMPORTING
        VALUE(i_title_sppl) TYPE bapiad3vl-title_sppl .
    METHODS set_addr_nickname
      IMPORTING
        VALUE(i_nickname) TYPE bapiad3vl-nickname .
    METHODS set_addr_initials
      IMPORTING
        VALUE(i_initials) TYPE bapiad3vl-initials .
    METHODS set_addr_nameformat
      IMPORTING
        VALUE(i_nameformat) TYPE bapiad3vl-nameformat .
    METHODS set_addr_namcountry
      IMPORTING
        VALUE(i_namcountry) TYPE bapiad3vl-namcountry .
    METHODS set_addr_namctryiso
      IMPORTING
        VALUE(i_namctryiso) TYPE bapiad3vl-namctryiso .
    METHODS set_addr_profession
      IMPORTING
        VALUE(i_profession) TYPE bapiad3vl-profession .
    METHODS set_addr_sex
      IMPORTING
        VALUE(i_sex) TYPE bapiad3vl-sex .
    METHODS set_addr_langu_p
      IMPORTING
        VALUE(i_langu_p) TYPE bapiad3vl-langu_p .
    METHODS set_addr_langup_iso
      IMPORTING
        VALUE(i_langup_iso) TYPE bapiad3vl-langup_iso .
    METHODS set_addr_sort1_p
      IMPORTING
        VALUE(i_sort1_p) TYPE bapiad3vl-sort1_p .
    METHODS set_addr_sort2_p
      IMPORTING
        VALUE(i_sort2_p) TYPE bapiad3vl-sort2_p .
    METHODS set_addr_langu_cr_p
      IMPORTING
        VALUE(i_langu_cr_p) TYPE bapiad3vl-langu_cr_p .
    METHODS set_addr_langucpiso
      IMPORTING
        VALUE(i_langucpiso) TYPE bapiad3vl-langucpiso .
    METHODS set_addr_department
      IMPORTING
        VALUE(i_department) TYPE bapiad3vl-department .
    METHODS set_addr_function
      IMPORTING
        VALUE(i_function) TYPE bapiad3vl-function .
    METHODS set_addr_building_p
      IMPORTING
        VALUE(i_building_p) TYPE bapiad3vl-building_p .
    METHODS set_addr_floor_p
      IMPORTING
        VALUE(i_floor_p) TYPE bapiad3vl-floor_p .
    METHODS set_addr_room_no_p
      IMPORTING
        VALUE(i_room_no_p) TYPE bapiad3vl-room_no_p .
    METHODS set_addr_inits_sig
      IMPORTING
        VALUE(i_inits_sig) TYPE bapiad3vl-inits_sig .
    METHODS set_addr_inhouse_ml
      IMPORTING
        VALUE(i_inhouse_ml) TYPE bapiad3vl-inhouse_ml .
    METHODS set_addr_comm_type
      IMPORTING
        VALUE(i_comm_type) TYPE bapiad3vl-comm_type .
    METHODS set_addr_pers_group
      IMPORTING
        VALUE(i_pers_group) TYPE bapiad3vl-pers_group .
    METHODS set_data_abtnr
      IMPORTING
        VALUE(i_abtnr) TYPE abtnr_pa .
    METHODS set_data_uepar
      IMPORTING
        VALUE(i_uepar) TYPE uepar .
    METHODS set_data_pafkt
      IMPORTING
        VALUE(i_pafkt) TYPE pafkt .
    METHODS set_data_parvo
      IMPORTING
        VALUE(i_parvo) TYPE parvo .
    METHODS set_data_pavip
      IMPORTING
        VALUE(i_pavip) TYPE pavip .
    METHODS set_data_parge
      IMPORTING
        VALUE(i_parge) TYPE parge .
    METHODS set_data_gbdat
      IMPORTING
        VALUE(i_gbdat) TYPE gbdat .
    METHODS set_data_vrtnr
      IMPORTING
        VALUE(i_vrtnr) TYPE vtrnr .
    METHODS set_data_bryth
      IMPORTING
        VALUE(i_bryth) TYPE bryth .
    METHODS set_data_akver
      IMPORTING
        VALUE(i_akver) TYPE akver .
    METHODS set_data_nmail
      IMPORTING
        VALUE(i_nmail) TYPE nmail .
    METHODS set_data_parau
      IMPORTING
        VALUE(i_parau) TYPE parau .
    METHODS set_data_parh1
      IMPORTING
        VALUE(i_parh1) TYPE paat1 .
    METHODS set_data_parh2
      IMPORTING
        VALUE(i_parh2) TYPE paat2 .
    METHODS set_data_parh3
      IMPORTING
        VALUE(i_parh3) TYPE paat3 .
    METHODS set_data_parh4
      IMPORTING
        VALUE(i_parh4) TYPE paat4 .
    METHODS set_data_parh5
      IMPORTING
        VALUE(i_parh5) TYPE paat5 .
    METHODS set_data_moab1
      IMPORTING
        VALUE(i_moab1) TYPE bemoab1 .
    METHODS set_data_mobi1
      IMPORTING
        VALUE(i_mobi1) TYPE bemobi1 .
    METHODS set_data_moab2
      IMPORTING
        VALUE(i_moab2) TYPE bemoab2 .
    METHODS set_data_mobi2
      IMPORTING
        VALUE(i_mobi2) TYPE bemobi2 .
    METHODS set_data_diab1
      IMPORTING
        VALUE(i_diab1) TYPE bediab1 .
    METHODS set_data_dibi1
      IMPORTING
        VALUE(i_dibi1) TYPE bedibi1 .
    METHODS set_data_diab2
      IMPORTING
        VALUE(i_diab2) TYPE bediab2 .
    METHODS set_data_dibi2
      IMPORTING
        VALUE(i_dibi2) TYPE bedibi2 .
    METHODS set_data_miab1
      IMPORTING
        VALUE(i_miab1) TYPE bemiab1 .
    METHODS set_data_mibi1
      IMPORTING
        VALUE(i_mibi1) TYPE bemibi1 .
    METHODS set_data_miab2
      IMPORTING
        VALUE(i_miab2) TYPE bemiab2 .
    METHODS set_data_mibi2
      IMPORTING
        VALUE(i_mibi2) TYPE bemibi2 .
    METHODS set_data_doab1
      IMPORTING
        VALUE(i_doab1) TYPE bedoab1 .
    METHODS set_data_dobi1
      IMPORTING
        VALUE(i_dobi1) TYPE bedobi1 .
    METHODS set_data_doab2
      IMPORTING
        VALUE(i_doab2) TYPE bedoab2 .
    METHODS set_data_dobi2
      IMPORTING
        VALUE(i_dobi2) TYPE bedobi2 .
    METHODS set_data_frab1
      IMPORTING
        VALUE(i_frab1) TYPE befrab1 .
    METHODS set_data_frbi1
      IMPORTING
        VALUE(i_frbi1) TYPE befrbi1 .
    METHODS set_data_frab2
      IMPORTING
        VALUE(i_frab2) TYPE befrab2 .
    METHODS set_data_frbi2
      IMPORTING
        VALUE(i_frbi2) TYPE befrbi2 .
    METHODS set_data_saab1
      IMPORTING
        VALUE(i_saab1) TYPE besaab1 .
    METHODS set_data_sabi1
      IMPORTING
        VALUE(i_sabi1) TYPE besabi1 .
    METHODS set_data_saab2
      IMPORTING
        VALUE(i_saab2) TYPE besaab2 .
    METHODS set_data_sabi2
      IMPORTING
        VALUE(i_sabi2) TYPE besabi2 .
    METHODS set_data_soab1
      IMPORTING
        VALUE(i_soab1) TYPE besoab1 .
    METHODS set_data_sobi1
      IMPORTING
        VALUE(i_sobi1) TYPE besobi1 .
    METHODS set_data_soab2
      IMPORTING
        VALUE(i_soab2) TYPE besoab2 .
    METHODS set_data_sobi2
      IMPORTING
        VALUE(i_sobi2) TYPE besobi2 .
    METHODS set_data_pakn1
      IMPORTING
        VALUE(i_pakn1) TYPE paat6 .
    METHODS set_data_pakn2
      IMPORTING
        VALUE(i_pakn2) TYPE paat7 .
    METHODS set_data_pakn3
      IMPORTING
        VALUE(i_pakn3) TYPE paat8 .
    METHODS set_data_pakn4
      IMPORTING
        VALUE(i_pakn4) TYPE paat9 .
    METHODS set_data_pakn5
      IMPORTING
        VALUE(i_pakn5) TYPE paat0 .
    METHODS set_data_sortl
      IMPORTING
        VALUE(i_sortl) TYPE sortl .
    METHODS set_data_famst
      IMPORTING
        VALUE(i_famst) TYPE famst .
    METHODS set_data_cvp_xblck_k
      IMPORTING
        VALUE(i_cvp_xblck_k) TYPE cvp_xblck .
    METHODS set_addr_org_addr_vers
      IMPORTING
        VALUE(i_addr_vers) TYPE ad_nation .
    METHODS set_addr_org_from_date
      IMPORTING
        VALUE(i_from_date) TYPE ad_date_fr .
    METHODS set_addr_org_to_date
      IMPORTING
        VALUE(i_to_date) TYPE ad_date_to .
    METHODS set_addr_org_title
      IMPORTING
        VALUE(i_title) TYPE ad_title .
    METHODS set_addr_org_name
      IMPORTING
        VALUE(i_name) TYPE ad_name1 .
    METHODS set_addr_org_name_2
      IMPORTING
        VALUE(i_name_2) TYPE ad_name2 .
    METHODS set_addr_org_name_3
      IMPORTING
        VALUE(i_name_3) TYPE ad_name3 .
    METHODS set_addr_org_name_4
      IMPORTING
        VALUE(i_name_4) TYPE ad_name4 .
    METHODS set_addr_org_conv_name
      IMPORTING
        VALUE(i_conv_name) TYPE ad_nametxt .
    METHODS set_addr_org_c_o_name
      IMPORTING
        VALUE(i_c_o_name) TYPE ad_name_co .
    METHODS set_addr_org_city
      IMPORTING
        VALUE(i_city) TYPE ad_city1 .
    METHODS set_addr_org_district
      IMPORTING
        VALUE(i_district) TYPE ad_city2 .
    METHODS set_addr_org_city_no
      IMPORTING
        VALUE(i_city_no) TYPE ad_citynum .
    METHODS set_addr_org_distrct_no
      IMPORTING
        VALUE(i_distrct_no) TYPE ad_citypnm .
    METHODS set_addr_org_chckstatus
      IMPORTING
        VALUE(i_chckstatus) TYPE ad_checkst .
    METHODS set_addr_org_regiogroup
      IMPORTING
        VALUE(i_regiogroup) TYPE regiogroup .
    METHODS set_addr_org_postl_cod1
      IMPORTING
        VALUE(i_postl_cod1) TYPE ad_pstcd1 .
    METHODS set_addr_org_postl_cod2
      IMPORTING
        VALUE(i_postl_cod2) TYPE ad_pstcd2 .
    METHODS set_addr_org_postl_cod3
      IMPORTING
        VALUE(i_postl_cod3) TYPE ad_pstcd3 .
    METHODS set_addr_org_pcode1_ext
      IMPORTING
        VALUE(i_pcode1_ext) TYPE ad_pst1xt .
    METHODS set_addr_org_pcode2_ext
      IMPORTING
        VALUE(i_pcode2_ext) TYPE ad_pst2xt .
    METHODS set_addr_org_pcode3_ext
      IMPORTING
        VALUE(i_pcode3_ext) TYPE ad_pst3xt .
    METHODS set_addr_org_po_box
      IMPORTING
        VALUE(i_po_box) TYPE ad_pobx .
    METHODS set_addr_org_po_w_o_no
      IMPORTING
        VALUE(i_po_w_o_no) TYPE ad_pobxnum .
    METHODS set_addr_org_po_box_cit
      IMPORTING
        VALUE(i_po_box_cit) TYPE ad_pobxloc .
    METHODS set_addr_org_pboxcit_no
      IMPORTING
        VALUE(i_pboxcit_no) TYPE ad_cit2num .
    METHODS set_addr_org_po_box_reg
      IMPORTING
        VALUE(i_po_box_reg) TYPE ad_pobxreg .
    METHODS set_addr_org_pobox_ctry
      IMPORTING
        VALUE(i_pobox_ctry) TYPE ad_pobxcty .
    METHODS set_addr_org_po_ctryiso
      IMPORTING
        VALUE(i_po_ctryiso) TYPE intca .
    METHODS set_addr_org_deliv_dis
      IMPORTING
        VALUE(i_deliv_dis) TYPE ad_pstlar .
    METHODS set_addr_org_transpzone
      IMPORTING
        VALUE(i_transpzone) TYPE lzone .
    METHODS set_addr_org_street
      IMPORTING
        VALUE(i_street) TYPE ad_street .
    METHODS set_addr_org_street_no
      IMPORTING
        VALUE(i_street_no) TYPE ad_strnum .
    METHODS set_addr_org_str_abbr
      IMPORTING
        VALUE(i_str_abbr) TYPE ad_strabbr .
    METHODS set_addr_org_house_no
      IMPORTING
        VALUE(i_house_no) TYPE ad_hsnm1 .
    METHODS set_addr_org_house_no2
      IMPORTING
        VALUE(i_house_no2) TYPE ad_hsnm2 .
    METHODS set_addr_org_house_no3
      IMPORTING
        VALUE(i_house_no3) TYPE ad_hsnm3 .
    METHODS set_addr_org_str_suppl1
      IMPORTING
        VALUE(i_str_suppl1) TYPE ad_strspp1 .
    METHODS set_addr_org_str_suppl2
      IMPORTING
        VALUE(i_str_suppl2) TYPE ad_strspp2 .
    METHODS set_addr_org_str_suppl3
      IMPORTING
        VALUE(i_str_suppl3) TYPE ad_strspp3 .
    METHODS set_addr_org_location
      IMPORTING
        VALUE(i_location) TYPE ad_lctn .
    METHODS set_addr_org_building
      IMPORTING
        VALUE(i_building) TYPE ad_bldng .
    METHODS set_addr_org_floor
      IMPORTING
        VALUE(i_floor) TYPE ad_floor .
    METHODS set_addr_org_room_no
      IMPORTING
        VALUE(i_room_no) TYPE ad_roomnum .
    METHODS set_addr_org_country
      IMPORTING
        VALUE(i_country) TYPE land1 .
    METHODS set_addr_org_countryiso
      IMPORTING
        VALUE(i_countryiso) TYPE intca .
    METHODS set_addr_org_langu
      IMPORTING
        VALUE(i_langu) TYPE spras .
    METHODS set_addr_org_langu_iso
      IMPORTING
        VALUE(i_langu_iso) TYPE laiso .
    METHODS set_addr_org_region
      IMPORTING
        VALUE(i_region) TYPE regio .
    METHODS set_addr_org_sort1
      IMPORTING
        VALUE(i_sort1) TYPE ad_sort1 .
    METHODS set_addr_org_sort2
      IMPORTING
        VALUE(i_sort2) TYPE ad_sort2 .
    METHODS set_addr_org_extens_1
      IMPORTING
        VALUE(i_extens_1) TYPE ad_extens1 .
    METHODS set_addr_org_extens_2
      IMPORTING
        VALUE(i_extens_2) TYPE ad_extens2 .
    METHODS set_addr_org_time_zone
      IMPORTING
        VALUE(i_time_zone) TYPE ad_tzone .
    METHODS set_addr_org_taxjurcode
      IMPORTING
        VALUE(i_taxjurcode) TYPE ad_txjcd .
    METHODS set_addr_org_address_id
      IMPORTING
        VALUE(i_address_id) TYPE ad_addr_id .
    METHODS set_addr_org_langu_cr
      IMPORTING
        VALUE(i_langu_cr) TYPE ad_langucr .
    METHODS set_addr_org_langucriso
      IMPORTING
        VALUE(i_langucriso) TYPE laiso .
    METHODS set_addr_org_comm_type
      IMPORTING
        VALUE(i_comm_type) TYPE ad_comm .
    METHODS set_addr_org_addr_group
      IMPORTING
        VALUE(i_addr_group) TYPE ad_group .
    METHODS set_addr_org_home_city
      IMPORTING
        VALUE(i_home_city) TYPE ad_city3 .
    METHODS set_addr_org_homecityno
      IMPORTING
        VALUE(i_homecityno) TYPE ad_cityhnm .
    METHODS set_addr_org_dont_use_s
      IMPORTING
        VALUE(i_dont_use_s) TYPE ad_no_uses .
    METHODS set_addr_org_dont_use_p
      IMPORTING
        VALUE(i_dont_use_p) TYPE ad_no_usep .
    METHODS set_addr_org_po_box_lobby
      IMPORTING
        VALUE(i_po_box_lobby) TYPE ad_po_box_lby .
    METHODS set_addr_org_deli_serv_type
      IMPORTING
        VALUE(i_deli_serv_type) TYPE ad_delivery_service_type .
    METHODS set_addr_org_deli_serv_number
      IMPORTING
        VALUE(i_deli_serv_number) TYPE ad_delivery_service_number .
    METHODS set_addr_org_county_code
      IMPORTING
        VALUE(i_county_code) TYPE ad_cntynum .
    METHODS set_addr_org_county
      IMPORTING
        VALUE(i_county) TYPE ad_county .
    METHODS set_addr_org_township_code
      IMPORTING
        VALUE(i_township_code) TYPE ad_twshpnum .
    METHODS set_addr_org_township
      IMPORTING
        VALUE(i_township) TYPE ad_township .
    METHODS add_phone_number
      IMPORTING
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_extension) TYPE bapiadtel-extension OPTIONAL
        VALUE(i_standard)  TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS delete_phone_number
      IMPORTING
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_extension) TYPE bapiadtel-extension OPTIONAL .
    METHODS change_phone_number
      IMPORTING
        VALUE(i_phone_old)     TYPE bapiadtel-telephone
        VALUE(i_extension_old) TYPE bapiadtel-extension OPTIONAL
        VALUE(i_phone)         TYPE bapiadtel-telephone
        VALUE(i_extension)     TYPE bapiadtel-extension OPTIONAL
        VALUE(i_standard)      TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)       TYPE bapiadtel-country OPTIONAL .
    METHODS get_standard_phone_number
      EXPORTING
        VALUE(e_phone)     TYPE bapiadtel-telephone
        VALUE(e_extension) TYPE bapiadtel-extension
        VALUE(e_country)   TYPE bapiadtel-country .
    METHODS get_standard_mobile_number
      EXPORTING
        VALUE(e_phone)   TYPE bapiadtel-telephone
        VALUE(e_country) TYPE bapiadtel-country .
    METHODS get_standard_fax_number
      EXPORTING
        VALUE(e_fax)       TYPE bapiadfax-fax
        VALUE(e_extension) TYPE bapiadfax-extension
        VALUE(e_country)   TYPE bapiadfax-country .
    METHODS get_standard_email
      EXPORTING
        VALUE(e_email) TYPE bapiadsmtp-e_mail .
    METHODS add_mobile_number
      IMPORTING
        VALUE(i_phone)    TYPE bapiadtel-telephone
        VALUE(i_standard) TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)  TYPE bapiadtel-country OPTIONAL .
    METHODS delete_mobile_number
      IMPORTING
        VALUE(i_phone) TYPE bapiadtel-telephone .
    METHODS change_mobile_number
      IMPORTING
        VALUE(i_phone_old) TYPE bapiadtel-telephone
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_standard)  TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS add_fax_number
      IMPORTING
        VALUE(i_fax)       TYPE bapiadfax-fax
        VALUE(i_extension) TYPE bapiadfax-extension OPTIONAL
        VALUE(i_standard)  TYPE bapiadfax-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS delete_fax_number
      IMPORTING
        VALUE(i_fax)       TYPE bapiadfax-fax
        VALUE(i_extension) TYPE bapiadfax-extension OPTIONAL .
    METHODS change_fax_number
      IMPORTING
        VALUE(i_fax_old)       TYPE bapiadfax-fax
        VALUE(i_extension_old) TYPE bapiadfax-extension OPTIONAL
        VALUE(i_fax)           TYPE bapiadfax-fax
        VALUE(i_extension)     TYPE bapiadfax-extension OPTIONAL
        VALUE(i_standard)      TYPE bapiadfax-std_no DEFAULT abap_true
        VALUE(i_country)       TYPE bapiadtel-country OPTIONAL .
    METHODS add_email
      IMPORTING
        VALUE(i_email)    TYPE bapiadsmtp-e_mail
        VALUE(i_standard) TYPE bapiadsmtp-std_no DEFAULT abap_true .
    METHODS delete_email
      IMPORTING
        VALUE(i_email) TYPE bapiadsmtp-e_mail .
    METHODS change_email
      IMPORTING
        VALUE(i_email_old) TYPE bapiadsmtp-e_mail
        VALUE(i_email)     TYPE bapiadsmtp-e_mail
        VALUE(i_standard)  TYPE bapiadsmtp-std_no DEFAULT abap_true .
    METHODS add_business_phone_number
      IMPORTING
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_extension) TYPE bapiadtel-extension OPTIONAL
        VALUE(i_standard)  TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS delete_business_phone_number
      IMPORTING
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_extension) TYPE bapiadtel-extension OPTIONAL .
    METHODS change_business_phone_number
      IMPORTING
        VALUE(i_phone_old)     TYPE bapiadtel-telephone
        VALUE(i_extension_old) TYPE bapiadtel-extension OPTIONAL
        VALUE(i_phone)         TYPE bapiadtel-telephone
        VALUE(i_extension)     TYPE bapiadtel-extension OPTIONAL
        VALUE(i_standard)      TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)       TYPE bapiadtel-country OPTIONAL .
    METHODS get_standard_bus_phone_number
      EXPORTING
        VALUE(e_phone)     TYPE bapiadtel-telephone
        VALUE(e_extension) TYPE bapiadtel-extension
        VALUE(e_country)   TYPE bapiadtel-country .
    METHODS get_standard_bus_mobile_number
      EXPORTING
        VALUE(e_phone)   TYPE bapiadtel-telephone
        VALUE(e_country) TYPE bapiadtel-country .
    METHODS get_standard_bus_fax_number
      EXPORTING
        VALUE(e_fax)       TYPE bapiadfax-fax
        VALUE(e_extension) TYPE bapiadfax-extension
        VALUE(e_country)   TYPE bapiadfax-country .
    METHODS get_standard_bus_email
      EXPORTING
        VALUE(e_email) TYPE bapiadsmtp-e_mail .
    METHODS add_business_mobile_number
      IMPORTING
        VALUE(i_phone)    TYPE bapiadtel-telephone
        VALUE(i_standard) TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)  TYPE bapiadtel-country OPTIONAL .
    METHODS delete_business_mobile_number
      IMPORTING
        VALUE(i_phone) TYPE bapiadtel-telephone .
    METHODS change_business_mobile_number
      IMPORTING
        VALUE(i_phone_old) TYPE bapiadtel-telephone
        VALUE(i_phone)     TYPE bapiadtel-telephone
        VALUE(i_standard)  TYPE bapiadtel-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS add_business_fax_number
      IMPORTING
        VALUE(i_fax)       TYPE bapiadfax-fax
        VALUE(i_extension) TYPE bapiadfax-extension OPTIONAL
        VALUE(i_standard)  TYPE bapiadfax-std_no DEFAULT abap_true
        VALUE(i_country)   TYPE bapiadtel-country OPTIONAL .
    METHODS delete_business_fax_number
      IMPORTING
        VALUE(i_fax)       TYPE bapiadfax-fax
        VALUE(i_extension) TYPE bapiadfax-extension OPTIONAL .
    METHODS change_business_fax_number
      IMPORTING
        VALUE(i_fax_old)       TYPE bapiadfax-fax
        VALUE(i_extension_old) TYPE bapiadfax-extension OPTIONAL
        VALUE(i_fax)           TYPE bapiadfax-fax
        VALUE(i_extension)     TYPE bapiadfax-extension OPTIONAL
        VALUE(i_standard)      TYPE bapiadfax-std_no DEFAULT abap_true
        VALUE(i_country)       TYPE bapiadtel-country OPTIONAL .
    METHODS add_business_email
      IMPORTING
        VALUE(i_email)    TYPE bapiadsmtp-e_mail
        VALUE(i_standard) TYPE bapiadsmtp-std_no DEFAULT abap_true .
    METHODS delete_business_email
      IMPORTING
        VALUE(i_email) TYPE bapiadsmtp-e_mail .
    METHODS change_business_email
      IMPORTING
        VALUE(i_email_old) TYPE bapiadsmtp-e_mail
        VALUE(i_email)     TYPE bapiadsmtp-e_mail
        VALUE(i_standard)  TYPE bapiadsmtp-std_no DEFAULT abap_true .
  PROTECTED SECTION.
    DATA: ref_data     TYPE REF TO vmds_ei_contacts,
          extension_id TYPE guid_32.
    METHODS update_address_task
      CHANGING
        c_address TYPE any.

    METHODS constructor
      IMPORTING
        i_contact      TYPE knvp-parnr OPTIONAL
        i_vendor       TYPE knvp-lifnr
        i_extension_id TYPE guid_32 OPTIONAL
      RAISING
        zcx_vmd_vendor .

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_contact IMPLEMENTATION.


  METHOD add_business_email.
    ASSIGN ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) INTO TABLE ref_data->address_type_1-communication-smtp-smtp ASSIGNING <mail>.
    ENDIF.
  ENDMETHOD.


  METHOD add_business_fax_number.
    ASSIGN ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_1-communication-fax-fax ASSIGNING <fax>.
      <fax>-contact-datax-fax = abap_true.
      <fax>-contact-datax-fax_no = abap_true.
      <fax>-contact-datax-extension = abap_true.
      <fax>-contact-datax-std_no = abap_true.
      <fax>-contact-datax-sender_no = abap_true.

      IF i_country IS SUPPLIED.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD add_business_mobile_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_1-communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD add_business_phone_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_1-communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD add_email.
    ASSIGN ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) INTO TABLE ref_data->address_type_3-communication-smtp-smtp ASSIGNING <mail>.
    ENDIF.
  ENDMETHOD.


  METHOD add_fax_number.
    ASSIGN ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_3-communication-fax-fax ASSIGNING <fax>.
      <fax>-contact-datax-fax = abap_true.
      <fax>-contact-datax-fax_no = abap_true.
      <fax>-contact-datax-extension = abap_true.
      <fax>-contact-datax-std_no = abap_true.
      <fax>-contact-datax-sender_no = abap_true.

      IF i_country IS SUPPLIED.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD add_mobile_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_3-communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD add_phone_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE ref_data->address_type_3-communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD change_business_email.
    ASSIGN ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      <mail>-contact-task = zcl_vmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    ENDIF.
  ENDMETHOD.


  METHOD change_business_fax_number.
    ASSIGN ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax_old
                                          contact-data-extension = i_extension_old ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      <fax>-contact-task = zcl_vmd_util=>mode-modify.
      <fax>-contact-data-fax = i_fax.
      <fax>-contact-data-extension = i_extension.
      <fax>-contact-data-std_no = i_standard.
      CLEAR: <fax>-contact-data-fax_no,
             <fax>-contact-data-sender_no.
      <fax>-contact-datax-fax = abap_true.
      <fax>-contact-datax-fax_no = abap_true.
      <fax>-contact-datax-extension = abap_true.
      <fax>-contact-datax-std_no = abap_true.
      <fax>-contact-datax-sender_no = abap_true.

      IF i_country IS SUPPLIED.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD change_business_mobile_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone_old ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_vmd_util=>phone_type-mobile.
      <phone>-contact-data-std_recip   = abap_true. "SMS.
      <phone>-contact-data-std_no = i_standard.
      IF i_country IS SUPPLIED.
        <phone>-contact-data-country = i_country.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD change_business_phone_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone_old
                                              contact-data-extension = i_extension_old ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_vmd_util=>phone_type-fixed.
      <phone>-contact-data-std_recip   = abap_false. "SMS.
      <phone>-contact-data-std_no = i_standard.
      IF i_country IS SUPPLIED.
        <phone>-contact-data-country = i_country.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD change_email.
    ASSIGN ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      <mail>-contact-task = zcl_vmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    ENDIF.
  ENDMETHOD.


  METHOD change_fax_number.
    ASSIGN ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax_old
                                          contact-data-extension = i_extension_old ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      <fax>-contact-task = zcl_vmd_util=>mode-modify.
      <fax>-contact-data-fax = i_fax.
      <fax>-contact-data-extension = i_extension.
      <fax>-contact-data-std_no = i_standard.
      CLEAR: <fax>-contact-data-fax_no,
             <fax>-contact-data-sender_no.
      <fax>-contact-datax-fax = abap_true.
      <fax>-contact-datax-fax_no = abap_true.
      <fax>-contact-datax-extension = abap_true.
      <fax>-contact-datax-std_no = abap_true.
      <fax>-contact-datax-sender_no = abap_true.

      IF i_country IS SUPPLIED.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD change_mobile_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone_old ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_vmd_util=>phone_type-mobile.
      <phone>-contact-data-std_recip   = abap_true. "SMS.
      <phone>-contact-data-std_no = i_standard.
      IF i_country IS SUPPLIED.
        <phone>-contact-data-country = i_country.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD change_phone_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone_old
                                              contact-data-extension = i_extension_old ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_vmd_util=>phone_type-fixed.
      <phone>-contact-data-std_recip   = abap_false. "SMS.
      <phone>-contact-data-std_no = i_standard.
      IF i_country IS SUPPLIED.
        <phone>-contact-data-country = i_country.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD constructor.
    vendor = i_vendor.
    contact = i_contact.
    extension_id = i_extension_id.
    IF i_contact IS NOT SUPPLIED OR i_contact IS INITIAL .
      set_mode( zcl_vmd_util=>mode-create ).
      "Get new contact number to be able to setup partner role for him
      "in one run of the class and one commit
      cmd_ei_api=>get_contact_number( IMPORTING ev_parnr = contact ).
    ELSE.
      SELECT SINGLE parnr INTO @contact
      FROM knvk
      WHERE lifnr EQ @vendor
      AND   parnr EQ @contact.
      IF sy-subrc NE 0.
        RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING no = 004 v1 = CONV #( contact ) v2 = CONV #( vendor ).
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      contact = NEW #( i_contact = i_contact i_vendor = i_vendor ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-contact ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_extension_id  = i_extension_id
            i_contact       = i_contact
            i_vendor      = i_vendor.
          contact ?= subclass.
        CATCH zcx_vmd_no_extension.
          contact = NEW #( i_contact = i_contact i_vendor = i_vendor ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete.
    IF contact IS NOT INITIAL.
      mode = zcl_vmd_util=>mode-delete.
    ELSE.
      CLEAR: ref_data.
    ENDIF.

  ENDMETHOD.


  METHOD delete_business_email.
    ASSIGN ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<email>).
    IF sy-subrc EQ 0.
      <email>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_business_fax_number.
    ASSIGN ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      <fax>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_business_mobile_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_business_phone_number.

    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.

  ENDMETHOD.


  METHOD delete_email.
    ASSIGN ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<email>).
    IF sy-subrc EQ 0.
      <email>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_fax_number.
    ASSIGN ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      <fax>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_mobile_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_phone_number.

    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.

  ENDMETHOD.


  METHOD get_data.
    r_full_data = ref_data.
  ENDMETHOD.


  METHOD get_standard_bus_email.
    ASSIGN ref_data->address_type_1-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      e_email =  <mail>-contact-data-e_mail.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_bus_fax_number.
    ASSIGN ref_data->address_type_1-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_bus_mobile_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-mobile_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_bus_phone_number.
    ASSIGN ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-fixed_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_email.
    ASSIGN ref_data->address_type_3-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      e_email =  <mail>-contact-data-e_mail.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_fax_number.
    ASSIGN ref_data->address_type_3-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_mobile_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-mobile_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_phone_number.
    ASSIGN ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-fixed_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD set_address.
    IF i_address IS NOT INITIAL.
      ref_data->address_type_3 = i_address.
    ENDIF.
  ENDMETHOD.


  METHOD set_address_org.
    IF i_address IS NOT INITIAL.
      ref_data->address_type_1 = i_address.
    ENDIF.

  ENDMETHOD.


  METHOD set_address_private.
    IF i_address IS NOT INITIAL.
      ref_data->address_type_2 = i_address.
    ENDIF.

  ENDMETHOD.


  METHOD set_addr_birth_name.
    ref_data->address_type_3-postal-data-birth_name = i_birth_name.
    ref_data->address_type_3-postal-datax-birth_name = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_building_p.
    ref_data->address_type_3-postal-data-building_p = i_building_p.
    ref_data->address_type_3-postal-datax-building_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_comm_type.
    ref_data->address_type_3-postal-data-comm_type = i_comm_type.
    ref_data->address_type_3-postal-datax-comm_type = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_department.
    ref_data->address_type_3-postal-data-department = i_department.
    ref_data->address_type_3-postal-datax-department = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_firstname.
    ref_data->address_type_3-postal-data-firstname = i_firstname.
    ref_data->address_type_3-postal-datax-firstname = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_floor_p.
    ref_data->address_type_3-postal-data-floor_p = i_floor_p.
    ref_data->address_type_3-postal-datax-floor_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_from_date.
    ref_data->address_type_3-postal-data-from_date = i_from_date.
    ref_data->address_type_3-postal-datax-from_date = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_fullname.
    ref_data->address_type_3-postal-data-fullname = i_fullname.
    ref_data->address_type_3-postal-datax-fullname = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).

  ENDMETHOD.


  METHOD set_addr_fullname_x.
    ref_data->address_type_3-postal-data-fullname_x = i_fullname_x.
    ref_data->address_type_3-postal-datax-fullname_x = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).

  ENDMETHOD.


  METHOD set_addr_function.
    ref_data->address_type_3-postal-data-function = i_function.
    ref_data->address_type_3-postal-datax-function = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_inhouse_ml.
    ref_data->address_type_3-postal-data-inhouse_ml = i_inhouse_ml.
    ref_data->address_type_3-postal-datax-inhouse_ml = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_initials.
    ref_data->address_type_3-postal-data-initials = i_initials.
    ref_data->address_type_3-postal-datax-initials = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_inits_sig.
    ref_data->address_type_3-postal-data-inits_sig = i_inits_sig.
    ref_data->address_type_3-postal-datax-inits_sig = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_langucpiso.
    ref_data->address_type_3-postal-data-langucpiso = i_langucpiso.
    ref_data->address_type_3-postal-datax-langucpiso = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_langup_iso.
    ref_data->address_type_3-postal-data-langup_iso = i_langup_iso.
    ref_data->address_type_3-postal-datax-langup_iso = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_langu_cr_p.
    ref_data->address_type_3-postal-data-langu_cr_p = i_langu_cr_p.
    ref_data->address_type_3-postal-datax-langu_cr_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_langu_p.
    ref_data->address_type_3-postal-data-langu_p = i_langu_p.
    ref_data->address_type_3-postal-datax-langu_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_lastname.
    ref_data->address_type_3-postal-data-lastname = i_lastname.
    ref_data->address_type_3-postal-datax-lastname = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_middlename.
    ref_data->address_type_3-postal-data-middlename = i_middlename.
    ref_data->address_type_3-postal-datax-middlename = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).

  ENDMETHOD.


  METHOD set_addr_namcountry.
    ref_data->address_type_3-postal-data-namcountry = i_namcountry.
    ref_data->address_type_3-postal-datax-namcountry = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_namctryiso.
    ref_data->address_type_3-postal-data-namctryiso = i_namctryiso.
    ref_data->address_type_3-postal-datax-namctryiso = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_nameformat.
    ref_data->address_type_3-postal-data-nameformat = i_nameformat.
    ref_data->address_type_3-postal-datax-nameformat = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_nickname.
    ref_data->address_type_3-postal-data-nickname = i_nickname.
    ref_data->address_type_3-postal-datax-nickname = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_org_address_id.
    ref_data->address_type_1-postal-data-address_id = i_address_id.
    ref_data->address_type_1-postal-datax-address_id = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_addr_group.
    ref_data->address_type_1-postal-data-addr_group = i_addr_group.
    ref_data->address_type_1-postal-datax-addr_group = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_addr_vers.
    ref_data->address_type_1-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_1-postal-datax-addr_vers = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_building.
    ref_data->address_type_1-postal-data-building = i_building.
    ref_data->address_type_1-postal-datax-building = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_chckstatus.
    ref_data->address_type_1-postal-data-chckstatus = i_chckstatus.
    ref_data->address_type_1-postal-datax-chckstatus = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_city.
    ref_data->address_type_1-postal-data-city = i_city.
    ref_data->address_type_1-postal-datax-city = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_city_no.
    ref_data->address_type_1-postal-data-city_no = i_city_no.
    ref_data->address_type_1-postal-datax-city_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_comm_type.
    ref_data->address_type_1-postal-data-comm_type = i_comm_type.
    ref_data->address_type_1-postal-datax-comm_type = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_conv_name.
    ref_data->address_type_1-postal-data-conv_name = i_conv_name.
    ref_data->address_type_1-postal-datax-conv_name = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_country.
    ref_data->address_type_1-postal-data-country = i_country.
    ref_data->address_type_1-postal-datax-country = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_countryiso.
    ref_data->address_type_1-postal-data-countryiso = i_countryiso.
    ref_data->address_type_1-postal-datax-countryiso = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_county.
    ref_data->address_type_1-postal-data-county = i_county.
    ref_data->address_type_1-postal-datax-county = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_county_code.
    ref_data->address_type_1-postal-data-county_code = i_county_code.
    ref_data->address_type_1-postal-datax-county_code = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_c_o_name.
    ref_data->address_type_1-postal-data-c_o_name = i_c_o_name.
    ref_data->address_type_1-postal-datax-c_o_name = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_deliv_dis.
    ref_data->address_type_1-postal-data-deliv_dis = i_deliv_dis.
    ref_data->address_type_1-postal-datax-deliv_dis = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_deli_serv_number.
    ref_data->address_type_1-postal-data-deli_serv_number = i_deli_serv_number.
    ref_data->address_type_1-postal-datax-deli_serv_number = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_deli_serv_type.
    ref_data->address_type_1-postal-data-deli_serv_type = i_deli_serv_type.
    ref_data->address_type_1-postal-datax-deli_serv_type = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_distrct_no.
    ref_data->address_type_1-postal-data-distrct_no = i_distrct_no.
    ref_data->address_type_1-postal-datax-distrct_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_district.
    ref_data->address_type_1-postal-data-district = i_district.
    ref_data->address_type_1-postal-datax-district = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_dont_use_p.
    ref_data->address_type_1-postal-data-dont_use_p = i_dont_use_p.
    ref_data->address_type_1-postal-datax-dont_use_p = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_dont_use_s.
    ref_data->address_type_1-postal-data-dont_use_s = i_dont_use_s.
    ref_data->address_type_1-postal-datax-dont_use_s = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_extens_1.
    ref_data->address_type_1-postal-data-extens_1 = i_extens_1.
    ref_data->address_type_1-postal-datax-extens_1 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_extens_2.
    ref_data->address_type_1-postal-data-extens_2 = i_extens_2.
    ref_data->address_type_1-postal-datax-extens_2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_floor.
    ref_data->address_type_1-postal-data-floor = i_floor.
    ref_data->address_type_1-postal-datax-floor = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_from_date.
    ref_data->address_type_1-postal-data-from_date = i_from_date.
    ref_data->address_type_1-postal-datax-from_date = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_homecityno.
    ref_data->address_type_1-postal-data-homecityno = i_homecityno.
    ref_data->address_type_1-postal-datax-homecityno = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_home_city.
    ref_data->address_type_1-postal-data-home_city = i_home_city.
    ref_data->address_type_1-postal-datax-home_city = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_house_no.
    ref_data->address_type_1-postal-data-house_no = i_house_no.
    ref_data->address_type_1-postal-datax-house_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_house_no2.
    ref_data->address_type_1-postal-data-house_no2 = i_house_no2.
    ref_data->address_type_1-postal-datax-house_no2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_house_no3.
    ref_data->address_type_1-postal-data-house_no3 = i_house_no3.
    ref_data->address_type_1-postal-datax-house_no3 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_langu.
    ref_data->address_type_1-postal-data-langu = i_langu.
    ref_data->address_type_1-postal-datax-langu = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_langucriso.
    ref_data->address_type_1-postal-data-langucriso = i_langucriso.
    ref_data->address_type_1-postal-datax-langucriso = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_langu_cr.
    ref_data->address_type_1-postal-data-langu_cr = i_langu_cr.
    ref_data->address_type_1-postal-datax-langu_cr = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_langu_iso.
    ref_data->address_type_1-postal-data-langu_iso = i_langu_iso.
    ref_data->address_type_1-postal-datax-langu_iso = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_location.
    ref_data->address_type_1-postal-data-location = i_location.
    ref_data->address_type_1-postal-datax-location = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_name.
    ref_data->address_type_1-postal-data-name = i_name.
    ref_data->address_type_1-postal-datax-name = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_name_2.
    ref_data->address_type_1-postal-data-name_2 = i_name_2.
    ref_data->address_type_1-postal-datax-name_2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_name_3.
    ref_data->address_type_1-postal-data-name_3 = i_name_3.
    ref_data->address_type_1-postal-datax-name_3 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_name_4.
    ref_data->address_type_1-postal-data-name_4 = i_name_4.
    ref_data->address_type_1-postal-datax-name_4 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_pboxcit_no.
    ref_data->address_type_1-postal-data-pboxcit_no = i_pboxcit_no.
    ref_data->address_type_1-postal-datax-pboxcit_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_pcode1_ext.
    ref_data->address_type_1-postal-data-pcode1_ext = i_pcode1_ext.
    ref_data->address_type_1-postal-datax-pcode1_ext = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_pcode2_ext.
    ref_data->address_type_1-postal-data-pcode2_ext = i_pcode2_ext.
    ref_data->address_type_1-postal-datax-pcode2_ext = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_pcode3_ext.
    ref_data->address_type_1-postal-data-pcode3_ext = i_pcode3_ext.
    ref_data->address_type_1-postal-datax-pcode3_ext = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_pobox_ctry.
    ref_data->address_type_1-postal-data-pobox_ctry = i_pobox_ctry.
    ref_data->address_type_1-postal-datax-pobox_ctry = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_postl_cod1.
    ref_data->address_type_1-postal-data-postl_cod1 = i_postl_cod1.
    ref_data->address_type_1-postal-datax-postl_cod1 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_postl_cod2.
    ref_data->address_type_1-postal-data-postl_cod2 = i_postl_cod2.
    ref_data->address_type_1-postal-datax-postl_cod2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_postl_cod3.
    ref_data->address_type_1-postal-data-postl_cod3 = i_postl_cod3.
    ref_data->address_type_1-postal-datax-postl_cod3 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_box.
    ref_data->address_type_1-postal-data-po_box = i_po_box.
    ref_data->address_type_1-postal-datax-po_box = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_box_cit.
    ref_data->address_type_1-postal-data-po_box_cit = i_po_box_cit.
    ref_data->address_type_1-postal-datax-po_box_cit = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_box_lobby.
    ref_data->address_type_1-postal-data-po_box_lobby = i_po_box_lobby.
    ref_data->address_type_1-postal-datax-po_box_lobby = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_box_reg.
    ref_data->address_type_1-postal-data-po_box_reg = i_po_box_reg.
    ref_data->address_type_1-postal-datax-po_box_reg = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_ctryiso.
    ref_data->address_type_1-postal-data-po_ctryiso = i_po_ctryiso.
    ref_data->address_type_1-postal-datax-po_ctryiso = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_po_w_o_no.
    ref_data->address_type_1-postal-data-po_w_o_no = i_po_w_o_no.
    ref_data->address_type_1-postal-datax-po_w_o_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_regiogroup.
    ref_data->address_type_1-postal-data-regiogroup = i_regiogroup.
    ref_data->address_type_1-postal-datax-regiogroup = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_region.
    ref_data->address_type_1-postal-data-region = i_region.
    ref_data->address_type_1-postal-datax-region = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_room_no.
    ref_data->address_type_1-postal-data-room_no = i_room_no.
    ref_data->address_type_1-postal-datax-room_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_sort1.
    ref_data->address_type_1-postal-data-sort1 = i_sort1.
    ref_data->address_type_1-postal-datax-sort1 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_sort2.
    ref_data->address_type_1-postal-data-sort2 = i_sort2.
    ref_data->address_type_1-postal-datax-sort2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_street.
    ref_data->address_type_1-postal-data-street = i_street.
    ref_data->address_type_1-postal-datax-street = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_street_no.
    ref_data->address_type_1-postal-data-street_no = i_street_no.
    ref_data->address_type_1-postal-datax-street_no = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_str_abbr.
    ref_data->address_type_1-postal-data-str_abbr = i_str_abbr.
    ref_data->address_type_1-postal-datax-str_abbr = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_str_suppl1.
    ref_data->address_type_1-postal-data-str_suppl1 = i_str_suppl1.
    ref_data->address_type_1-postal-datax-str_suppl1 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_str_suppl2.
    ref_data->address_type_1-postal-data-str_suppl2 = i_str_suppl2.
    ref_data->address_type_1-postal-datax-str_suppl2 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_str_suppl3.
    ref_data->address_type_1-postal-data-str_suppl3 = i_str_suppl3.
    ref_data->address_type_1-postal-datax-str_suppl3 = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_taxjurcode.
    ref_data->address_type_1-postal-data-taxjurcode = i_taxjurcode.
    ref_data->address_type_1-postal-datax-taxjurcode = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_time_zone.
    ref_data->address_type_1-postal-data-time_zone = i_time_zone.
    ref_data->address_type_1-postal-datax-time_zone = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_title.
    ref_data->address_type_1-postal-data-title = i_title.
    ref_data->address_type_1-postal-datax-title = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_township.
    ref_data->address_type_1-postal-data-township = i_township.
    ref_data->address_type_1-postal-datax-township = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_township_code.
    ref_data->address_type_1-postal-data-township_code = i_township_code.
    ref_data->address_type_1-postal-datax-township_code = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_to_date.
    ref_data->address_type_1-postal-data-to_date = i_to_date.
    ref_data->address_type_1-postal-datax-to_date = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_org_transpzone.
    ref_data->address_type_1-postal-data-transpzone = i_transpzone.
    ref_data->address_type_1-postal-datax-transpzone = abap_true .
    update_address_task( CHANGING c_address = ref_data->address_type_1 ).
  ENDMETHOD.


  METHOD set_addr_pers_group.
    ref_data->address_type_3-postal-data-pers_group = i_pers_group.
    ref_data->address_type_3-postal-datax-pers_group = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_prefix1.
    ref_data->address_type_3-postal-data-prefix1 = i_prefix1.
    ref_data->address_type_3-postal-datax-prefix1 = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_prefix2.
    ref_data->address_type_3-postal-data-prefix2 = i_prefix2.
    ref_data->address_type_3-postal-datax-prefix2 = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_profession.
    ref_data->address_type_3-postal-data-profession = i_profession.
    ref_data->address_type_3-postal-datax-profession = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_room_no_p.
    ref_data->address_type_3-postal-data-room_no_p = i_room_no_p.
    ref_data->address_type_3-postal-datax-room_no_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_secondname.
    ref_data->address_type_3-postal-data-secondname = i_secondname.
    ref_data->address_type_3-postal-datax-secondname = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).

  ENDMETHOD.


  METHOD set_addr_sex.
    ref_data->address_type_3-postal-data-sex = i_sex.
    ref_data->address_type_3-postal-datax-sex = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_sort1_p.
    ref_data->address_type_3-postal-data-sort1_p = i_sort1_p.
    ref_data->address_type_3-postal-datax-sort1_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_sort2_p.
    ref_data->address_type_3-postal-data-sort2_p = i_sort2_p.
    ref_data->address_type_3-postal-datax-sort2_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_title_aca1.
    ref_data->address_type_3-postal-data-title_aca1 = i_title_aca1.
    ref_data->address_type_3-postal-datax-title_aca1 = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).

  ENDMETHOD.


  METHOD set_addr_title_aca2.
    ref_data->address_type_3-postal-data-title_aca2 = i_title_aca2.
    ref_data->address_type_3-postal-datax-title_aca2 = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_title_p.
    ref_data->address_type_3-postal-data-title_p = i_title_p.
    ref_data->address_type_3-postal-datax-title_p = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_title_sppl.
    ref_data->address_type_3-postal-data-title_sppl = i_title_sppl.
    ref_data->address_type_3-postal-datax-title_sppl = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_to_date.
    ref_data->address_type_3-postal-data-to_date = i_to_date.
    ref_data->address_type_3-postal-datax-to_date = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_addr_vers.
    ref_data->address_type_3-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_3-postal-datax-addr_vers = abap_true.
    update_address_task( CHANGING c_address = ref_data->address_type_3 ).
  ENDMETHOD.


  METHOD set_data.
    ref_data = i_full_data.
    "    texts ?= zcl_VMD_texts=>create_instance( i_extension_id = extension_id i_texts = ref #( ref_data->contact_texts ) ).
    IF ref_data->data_key-parnr IS INITIAL.
      ref_data->data_key-parnr = contact.
    ENDIF.
  ENDMETHOD.


  METHOD set_data_abtnr. ref_data->data-abtnr = i_abtnr. ref_data->datax-abtnr = abap_true.  ENDMETHOD.


  METHOD set_data_akver. ref_data->data-akver = i_akver. ref_data->datax-akver = abap_true.  ENDMETHOD.


  METHOD set_data_bryth. ref_data->data-bryth = i_bryth. ref_data->datax-bryth = abap_true.  ENDMETHOD.


  METHOD set_data_cvp_xblck_k. ref_data->data-cvp_xblck_k = i_cvp_xblck_k. ref_data->datax-cvp_xblck_k = abap_true . ENDMETHOD.


  METHOD set_data_diab1. ref_data->data-diab1 = i_diab1. ref_data->datax-diab1 = abap_true.  ENDMETHOD.


  METHOD set_data_diab2. ref_data->data-diab2 = i_diab2. ref_data->datax-diab2 = abap_true.  ENDMETHOD.


  METHOD set_data_dibi1. ref_data->data-dibi1 = i_dibi1. ref_data->datax-dibi1 = abap_true.  ENDMETHOD.


  METHOD set_data_dibi2. ref_data->data-dibi2 = i_dibi2. ref_data->datax-dibi2 = abap_true.  ENDMETHOD.


  METHOD set_data_doab1. ref_data->data-doab1 = i_doab1. ref_data->datax-doab1 = abap_true.  ENDMETHOD.


  METHOD set_data_doab2. ref_data->data-doab2 = i_doab2. ref_data->datax-doab2 = abap_true.  ENDMETHOD.


  METHOD set_data_dobi1. ref_data->data-dobi1 = i_dobi1. ref_data->datax-dobi1 = abap_true.  ENDMETHOD.


  METHOD set_data_dobi2. ref_data->data-dobi2 = i_dobi2. ref_data->datax-dobi2 = abap_true.  ENDMETHOD.


  METHOD set_data_famst. ref_data->data-famst = i_famst. ref_data->datax-famst = abap_true.  ENDMETHOD.


  METHOD set_data_frab1. ref_data->data-frab1 = i_frab1. ref_data->datax-frab1 = abap_true.  ENDMETHOD.


  METHOD set_data_frab2. ref_data->data-frab2 = i_frab2. ref_data->datax-frab2 = abap_true.  ENDMETHOD.


  METHOD set_data_frbi1. ref_data->data-frbi1 = i_frbi1. ref_data->datax-frbi1 = abap_true.  ENDMETHOD.


  METHOD set_data_frbi2. ref_data->data-frbi2 = i_frbi2. ref_data->datax-frbi2 = abap_true.  ENDMETHOD.


  METHOD set_data_gbdat. ref_data->data-gbdat = i_gbdat. ref_data->datax-gbdat = abap_true.  ENDMETHOD.


  METHOD set_data_miab1. ref_data->data-miab1 = i_miab1. ref_data->datax-miab1 = abap_true.  ENDMETHOD.


  METHOD set_data_miab2. ref_data->data-miab2 = i_miab2. ref_data->datax-miab2 = abap_true.  ENDMETHOD.


  METHOD set_data_mibi1. ref_data->data-mibi1 = i_mibi1. ref_data->datax-mibi1 = abap_true.  ENDMETHOD.


  METHOD set_data_mibi2. ref_data->data-mibi2 = i_mibi2. ref_data->datax-mibi2 = abap_true.  ENDMETHOD.


  METHOD set_data_moab1. ref_data->data-moab1 = i_moab1. ref_data->datax-moab1 = abap_true.  ENDMETHOD.


  METHOD set_data_moab2. ref_data->data-moab2 = i_moab2. ref_data->datax-moab2 = abap_true.  ENDMETHOD.


  METHOD set_data_mobi1. ref_data->data-mobi1 = i_mobi1. ref_data->datax-mobi1 = abap_true.  ENDMETHOD.


  METHOD set_data_mobi2. ref_data->data-mobi2 = i_mobi2. ref_data->datax-mobi2 = abap_true.  ENDMETHOD.


  METHOD set_data_nmail. ref_data->data-nmail = i_nmail. ref_data->datax-nmail = abap_true.  ENDMETHOD.


  METHOD set_data_pafkt. ref_data->data-pafkt = i_pafkt. ref_data->datax-pafkt = abap_true.  ENDMETHOD.


  METHOD set_data_pakn1. ref_data->data-pakn1 = i_pakn1. ref_data->datax-pakn1 = abap_true.  ENDMETHOD.


  METHOD set_data_pakn2. ref_data->data-pakn2 = i_pakn2. ref_data->datax-pakn2 = abap_true.  ENDMETHOD.


  METHOD set_data_pakn3. ref_data->data-pakn3 = i_pakn3. ref_data->datax-pakn3 = abap_true.  ENDMETHOD.


  METHOD set_data_pakn4. ref_data->data-pakn4 = i_pakn4. ref_data->datax-pakn4 = abap_true.  ENDMETHOD.


  METHOD set_data_pakn5. ref_data->data-pakn5 = i_pakn5. ref_data->datax-pakn5 = abap_true.  ENDMETHOD.


  METHOD set_data_parau. ref_data->data-parau = i_parau. ref_data->datax-parau = abap_true.  ENDMETHOD.


  METHOD set_data_parge. ref_data->data-parge = i_parge. ref_data->datax-parge = abap_true.  ENDMETHOD.


  METHOD set_data_parh1. ref_data->data-parh1 = i_parh1. ref_data->datax-parh1 = abap_true.  ENDMETHOD.


  METHOD set_data_parh2. ref_data->data-parh2 = i_parh2. ref_data->datax-parh2 = abap_true.  ENDMETHOD.


  METHOD set_data_parh3. ref_data->data-parh3 = i_parh3. ref_data->datax-parh3 = abap_true.  ENDMETHOD.


  METHOD set_data_parh4. ref_data->data-parh4 = i_parh4. ref_data->datax-parh4 = abap_true.  ENDMETHOD.


  METHOD set_data_parh5. ref_data->data-parh5 = i_parh5. ref_data->datax-parh5 = abap_true.  ENDMETHOD.


  METHOD set_data_parvo. ref_data->data-parvo = i_parvo. ref_data->datax-parvo = abap_true.  ENDMETHOD.


  METHOD set_data_pavip. ref_data->data-pavip = i_pavip. ref_data->datax-pavip = abap_true.  ENDMETHOD.


  METHOD set_data_saab1. ref_data->data-saab1 = i_saab1. ref_data->datax-saab1 = abap_true.  ENDMETHOD.


  METHOD set_data_saab2. ref_data->data-saab2 = i_saab2. ref_data->datax-saab2 = abap_true.  ENDMETHOD.


  METHOD set_data_sabi1. ref_data->data-sabi1 = i_sabi1. ref_data->datax-sabi1 = abap_true.  ENDMETHOD.


  METHOD set_data_sabi2. ref_data->data-sabi2 = i_sabi2. ref_data->datax-sabi2 = abap_true.  ENDMETHOD.


  METHOD set_data_soab1. ref_data->data-soab1 = i_soab1. ref_data->datax-soab1 = abap_true.  ENDMETHOD.


  METHOD set_data_soab2. ref_data->data-soab2 = i_soab2. ref_data->datax-soab2 = abap_true.  ENDMETHOD.


  METHOD set_data_sobi1. ref_data->data-sobi1 = i_sobi1. ref_data->datax-sobi1 = abap_true.  ENDMETHOD.


  METHOD set_data_sobi2. ref_data->data-sobi2 = i_sobi2. ref_data->datax-sobi2 = abap_true.  ENDMETHOD.


  METHOD set_data_sortl. ref_data->data-sortl = i_sortl. ref_data->datax-sortl = abap_true.  ENDMETHOD.


  METHOD set_data_uepar. ref_data->data-uepar = i_uepar. ref_data->datax-uepar = abap_true.  ENDMETHOD.


  METHOD set_data_vrtnr. ref_data->data-vrtnr = i_vrtnr. ref_data->datax-vrtnr = abap_true.  ENDMETHOD.


  METHOD set_mode.
    "Mode Create is setup in constructor, It should not be changed.
    IF mode NE zcl_vmd_util=>mode-create.
      mode = i_mode.
      IF ref_data IS NOT INITIAL.
        ref_data->task = mode.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD update_address_task.
    ASSIGN COMPONENT 'TASK' OF STRUCTURE c_address TO FIELD-SYMBOL(<task>).
    IF sy-subrc EQ 0.
      IF <task> IS INITIAL.
        <task> = zcl_vmd_util=>mode-create.
      ELSEIF <task> EQ zcl_vmd_util=>mode-current_state.
        <task> = zcl_vmd_util=>mode-change.
      ENDIF.
    ENDIF.
    IF ref_data->task IS INITIAL.
      ref_data->task = mode.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
