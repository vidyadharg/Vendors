CLASS zcl_vmd_address DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    DATA: remarks      TYPE REF TO zcl_vmd_remarks,
          extension_id TYPE guid_32 READ-ONLY.
    CLASS-METHODS: create_instance IMPORTING i_extension_id   TYPE guid_32
                                   RETURNING VALUE(r_address) TYPE REF TO zcl_vmd_address.
    METHODS set_data
      IMPORTING
        !i_address TYPE REF TO cvis_ei_address1 .
    METHODS set_addr_vers
      IMPORTING
        VALUE(i_addr_vers) TYPE ad_nation .
    METHODS set_from_date
      IMPORTING
        VALUE(i_from_date) TYPE ad_date_fr .
    METHODS set_to_date
      IMPORTING
        VALUE(i_to_date) TYPE ad_date_to .
    METHODS set_title
      IMPORTING
        VALUE(i_title) TYPE ad_title .
    METHODS set_name
      IMPORTING
        VALUE(i_name) TYPE ad_name1 .
    METHODS set_name_2
      IMPORTING
        VALUE(i_name_2) TYPE ad_name2 .
    METHODS set_name_3
      IMPORTING
        VALUE(i_name_3) TYPE ad_name3 .
    METHODS set_name_4
      IMPORTING
        VALUE(i_name_4) TYPE ad_name4 .
    METHODS set_conv_name
      IMPORTING
        VALUE(i_conv_name) TYPE ad_nametxt .
    METHODS set_c_o_name
      IMPORTING
        VALUE(i_c_o_name) TYPE ad_name_co .
    METHODS set_city
      IMPORTING
        VALUE(i_city) TYPE ad_city1 .
    METHODS set_district
      IMPORTING
        VALUE(i_district) TYPE ad_city2 .
    METHODS set_city_no
      IMPORTING
        VALUE(i_city_no) TYPE ad_citynum .
    METHODS set_distrct_no
      IMPORTING
        VALUE(i_distrct_no) TYPE ad_citypnm .
    METHODS set_chckstatus
      IMPORTING
        VALUE(i_chckstatus) TYPE ad_checkst .
    METHODS set_regiogroup
      IMPORTING
        VALUE(i_regiogroup) TYPE regiogroup .
    METHODS set_postl_cod1
      IMPORTING
        VALUE(i_postl_cod1) TYPE ad_pstcd1 .
    METHODS set_postl_cod2
      IMPORTING
        VALUE(i_postl_cod2) TYPE ad_pstcd2 .
    METHODS set_postl_cod3
      IMPORTING
        VALUE(i_postl_cod3) TYPE ad_pstcd3 .
    METHODS set_pcode1_ext
      IMPORTING
        VALUE(i_pcode1_ext) TYPE ad_pst1xt .
    METHODS set_pcode2_ext
      IMPORTING
        VALUE(i_pcode2_ext) TYPE ad_pst2xt .
    METHODS set_pcode3_ext
      IMPORTING
        VALUE(i_pcode3_ext) TYPE ad_pst3xt .
    METHODS set_po_box
      IMPORTING
        VALUE(i_po_box) TYPE ad_pobx .
    METHODS set_po_w_o_no
      IMPORTING
        VALUE(i_po_w_o_no) TYPE ad_pobxnum .
    METHODS set_po_box_cit
      IMPORTING
        VALUE(i_po_box_cit) TYPE ad_pobxloc .
    METHODS set_pboxcit_no
      IMPORTING
        VALUE(i_pboxcit_no) TYPE ad_cit2num .
    METHODS set_po_box_reg
      IMPORTING
        VALUE(i_po_box_reg) TYPE ad_pobxreg .
    METHODS set_pobox_ctry
      IMPORTING
        VALUE(i_pobox_ctry) TYPE ad_pobxcty .
    METHODS set_po_ctryiso
      IMPORTING
        VALUE(i_po_ctryiso) TYPE intca .
    METHODS set_deliv_dis
      IMPORTING
        VALUE(i_deliv_dis) TYPE ad_pstlar .
    METHODS set_transpzone
      IMPORTING
        VALUE(i_transpzone) TYPE lzone .
    METHODS set_street
      IMPORTING
        VALUE(i_street) TYPE ad_street .
    METHODS set_street_no
      IMPORTING
        VALUE(i_street_no) TYPE ad_strnum .
    METHODS set_str_abbr
      IMPORTING
        VALUE(i_str_abbr) TYPE ad_strabbr .
    METHODS set_house_no
      IMPORTING
        VALUE(i_house_no) TYPE ad_hsnm1 .
    METHODS set_house_no2
      IMPORTING
        VALUE(i_house_no2) TYPE ad_hsnm2 .
    METHODS set_house_no3
      IMPORTING
        VALUE(i_house_no3) TYPE ad_hsnm3 .
    METHODS set_str_suppl1
      IMPORTING
        VALUE(i_str_suppl1) TYPE ad_strspp1 .
    METHODS set_str_suppl2
      IMPORTING
        VALUE(i_str_suppl2) TYPE ad_strspp2 .
    METHODS set_str_suppl3
      IMPORTING
        VALUE(i_str_suppl3) TYPE ad_strspp3 .
    METHODS set_location
      IMPORTING
        VALUE(i_location) TYPE ad_lctn .
    METHODS set_building
      IMPORTING
        VALUE(i_building) TYPE ad_bldng .
    METHODS set_floor
      IMPORTING
        VALUE(i_floor) TYPE ad_floor .
    METHODS set_room_no
      IMPORTING
        VALUE(i_room_no) TYPE ad_roomnum .
    METHODS set_country
      IMPORTING
        VALUE(i_country) TYPE land1 .
    METHODS set_countryiso
      IMPORTING
        VALUE(i_countryiso) TYPE intca .
    METHODS set_langu
      IMPORTING
        VALUE(i_langu) TYPE spras .
    METHODS set_langu_iso
      IMPORTING
        VALUE(i_langu_iso) TYPE laiso .
    METHODS set_region
      IMPORTING
        VALUE(i_region) TYPE regio .
    METHODS set_sort1
      IMPORTING
        VALUE(i_sort1) TYPE ad_sort1 .
    METHODS set_sort2
      IMPORTING
        VALUE(i_sort2) TYPE ad_sort2 .
    METHODS set_extens_1
      IMPORTING
        VALUE(i_extens_1) TYPE ad_extens1 .
    METHODS set_extens_2
      IMPORTING
        VALUE(i_extens_2) TYPE ad_extens2 .
    METHODS set_time_zone
      IMPORTING
        VALUE(i_time_zone) TYPE ad_tzone .
    METHODS set_taxjurcode
      IMPORTING
        VALUE(i_taxjurcode) TYPE ad_txjcd .
    METHODS set_address_id
      IMPORTING
        VALUE(i_address_id) TYPE ad_addr_id .
    METHODS set_langu_cr
      IMPORTING
        VALUE(i_langu_cr) TYPE ad_langucr .
    METHODS set_langucriso
      IMPORTING
        VALUE(i_langucriso) TYPE laiso .
    METHODS set_comm_type
      IMPORTING
        VALUE(i_comm_type) TYPE ad_comm .
    METHODS set_addr_group
      IMPORTING
        VALUE(i_addr_group) TYPE ad_group .
    METHODS set_home_city
      IMPORTING
        VALUE(i_home_city) TYPE ad_city3 .
    METHODS set_homecityno
      IMPORTING
        VALUE(i_homecityno) TYPE ad_cityhnm .
    METHODS set_dont_use_s
      IMPORTING
        VALUE(i_dont_use_s) TYPE ad_no_uses .
    METHODS set_dont_use_p
      IMPORTING
        VALUE(i_dont_use_p) TYPE ad_no_usep .
    METHODS set_po_box_lobby
      IMPORTING
        VALUE(i_po_box_lobby) TYPE ad_po_box_lby .
    METHODS set_deli_serv_type
      IMPORTING
        VALUE(i_deli_serv_type) TYPE ad_delivery_service_type .
    METHODS set_deli_serv_number
      IMPORTING
        VALUE(i_deli_serv_number) TYPE ad_delivery_service_number .
    METHODS set_county_code
      IMPORTING
        VALUE(i_county_code) TYPE ad_cntynum .
    METHODS set_county
      IMPORTING
        VALUE(i_county) TYPE ad_county .
    METHODS set_township_code
      IMPORTING
        VALUE(i_township_code) TYPE ad_twshpnum .
    METHODS set_township
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
    METHODS add_webpage
      IMPORTING
        VALUE(i_url)      TYPE ad_uri
        VALUE(i_standard) TYPE bapiaduri-std_no DEFAULT abap_true .
    METHODS delete_webpage
      IMPORTING
        VALUE(i_url) TYPE ad_uri .
    METHODS change_webpage
      IMPORTING
        VALUE(i_url_old)  TYPE ad_uri
        VALUE(i_url)      TYPE ad_uri
        VALUE(i_standard) TYPE bapiadsmtp-std_no DEFAULT abap_true .
    METHODS get_standard_webpage
      EXPORTING
        VALUE(e_url) TYPE ad_uri .
  PROTECTED SECTION.

    DATA: address TYPE REF TO cvis_ei_address1.
    METHODS: constructor IMPORTING i_extension_id   TYPE guid_32 OPTIONAL.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_address IMPLEMENTATION.


  METHOD add_email.
    ASSIGN address->communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) INTO TABLE address->communication-smtp-smtp ASSIGNING <mail>.
    ENDIF.
  ENDMETHOD.


  METHOD add_fax_number.
    ASSIGN address->communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                      contact-datax-fax = abap_true
                      contact-datax-extension = abap_true
                      contact-datax-std_no = abap_true
                      contact-datax-country = abap_true
                     ) INTO TABLE address->communication-fax-fax ASSIGNING <fax>.

      address->communication-fax-current_state = zcl_vmd_util=>mode-change.

    ENDIF.
  ENDMETHOD.


  METHOD add_mobile_number.
    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE address->communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD add_phone_number.
    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_vmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) INTO TABLE address->communication-phone-phone ASSIGNING <phone>.
    ENDIF.

  ENDMETHOD.


  METHOD add_webpage.
    ASSIGN address->communication-uri-uri[ contact-data-uri = i_url
                                           contact-data-uri_type = 'HPG' ] TO FIELD-SYMBOL(<url>).
    IF sy-subrc NE 0.
      INSERT VALUE #( contact-task = zcl_vmd_util=>mode-create
                      contact-data-uri = i_url
                      contact-data-std_no = i_standard
                      contact-data-uri_type = 'HPG'
                     ) INTO TABLE address->communication-uri-uri ASSIGNING <url>.
    ENDIF.
  ENDMETHOD.


  METHOD change_email.
    ASSIGN address->communication-smtp-smtp[ contact-data-e_mail = i_email_old ] TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      <mail>-contact-task = zcl_vmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    ENDIF.
  ENDMETHOD.


  METHOD change_fax_number.
    ASSIGN address->communication-fax-fax[ contact-data-fax = i_fax_old
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
    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone_old ] TO FIELD-SYMBOL(<phone>).
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
    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone_old
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


  METHOD change_webpage.
    ASSIGN address->communication-uri-uri[ contact-data-uri = i_url_old
                                           contact-data-uri_type = 'HPG' ] TO FIELD-SYMBOL(<url>).
    IF sy-subrc EQ 0.
      <url>-contact-task = zcl_vmd_util=>mode-modify.
      <url>-contact-data-uri = i_url.
      <url>-contact-data-std_no = i_standard.
    ENDIF.
  ENDMETHOD.


  METHOD constructor.
    extension_id = i_extension_id.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_address = NEW #( ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-address ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_extension_id  = i_extension_id.
          r_address ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_address = NEW #( ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete_email.
    ASSIGN address->communication-smtp-smtp[ contact-data-e_mail = i_email ] TO FIELD-SYMBOL(<email>).
    IF sy-subrc EQ 0.
      <email>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_fax_number.
    ASSIGN address->communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      <fax>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_mobile_number.
    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD delete_phone_number.

    ASSIGN address->communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      <phone>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.

  ENDMETHOD.


  METHOD delete_webpage.
    ASSIGN address->communication-uri-uri[ contact-data-uri = i_url
                                           contact-data-uri_type = 'HPG' ] TO FIELD-SYMBOL(<url>).
    IF sy-subrc EQ 0.
      <url>-contact-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.


  METHOD get_standard_email.
    ASSIGN address->communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<mail>).
    IF sy-subrc EQ 0.
      e_email =  <mail>-contact-data-e_mail.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_fax_number.
    ASSIGN address->communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                TO FIELD-SYMBOL(<fax>).
    IF sy-subrc EQ 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_mobile_number.
    ASSIGN address->communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-mobile_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_phone_number.
    ASSIGN address->communication-phone-phone[ contact-data-r_3_user = zcl_vmd_util=>phone_type-fixed_default ]
                                                                TO FIELD-SYMBOL(<phone>).
    IF sy-subrc EQ 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    ENDIF.

  ENDMETHOD.


  METHOD get_standard_webpage.
    ASSIGN address->communication-uri-uri[ contact-data-uri_type = 'HPG'
                                           contact-data-std_no = abap_true ] TO FIELD-SYMBOL(<url>).
    IF sy-subrc EQ 0.
      e_url =  <url>-contact-data-uri.
    ELSE.
      ASSIGN address->communication-uri-uri[ contact-data-uri_type = 'HPG' ] TO <url>.
      IF sy-subrc EQ 0.
        e_url =  <url>-contact-data-uri.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD set_address_id.
    address->postal-data-address_id = i_address_id. address->postal-datax-address_id = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_addr_group.
    address->postal-data-addr_group = i_addr_group. address->postal-datax-addr_group = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_addr_vers.
    address->postal-data-addr_vers = i_addr_vers. address->postal-datax-addr_vers = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_building.
    address->postal-data-building = i_building. address->postal-datax-building = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_chckstatus.
    address->postal-data-chckstatus = i_chckstatus. address->postal-datax-chckstatus = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_city.
    address->postal-data-city = i_city. address->postal-datax-city = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_city_no.
    address->postal-data-city_no = i_city_no. address->postal-datax-city_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_comm_type.
    address->postal-data-comm_type = i_comm_type. address->postal-datax-comm_type = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_conv_name.
    address->postal-data-conv_name = i_conv_name. address->postal-datax-conv_name = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_country.
    address->postal-data-country = i_country. address->postal-datax-country = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_countryiso.
    address->postal-data-countryiso = i_countryiso. address->postal-datax-countryiso = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_county.
    address->postal-data-county = i_county. address->postal-datax-county = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_county_code.
    address->postal-data-county_code = i_county_code. address->postal-datax-county_code = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_c_o_name.
    address->postal-data-c_o_name = i_c_o_name. address->postal-datax-c_o_name = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_data.
    address = i_address.
    remarks ?= zcl_vmd_remarks=>create_instance(
               i_extension_id = extension_id
               i_data         =  REF #( address->remark ) ).
  ENDMETHOD.


  METHOD set_deliv_dis.
    address->postal-data-deliv_dis = i_deliv_dis. address->postal-datax-deliv_dis = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_deli_serv_number.
    address->postal-data-deli_serv_number = i_deli_serv_number. address->postal-datax-deli_serv_number = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_deli_serv_type.
    address->postal-data-deli_serv_type = i_deli_serv_type. address->postal-datax-deli_serv_type = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_distrct_no.
    address->postal-data-distrct_no = i_distrct_no. address->postal-datax-distrct_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_district.
    address->postal-data-district = i_district. address->postal-datax-district = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_dont_use_p.
    address->postal-data-dont_use_p = i_dont_use_p. address->postal-datax-dont_use_p = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_dont_use_s.
    address->postal-data-dont_use_s = i_dont_use_s. address->postal-datax-dont_use_s = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_extens_1.
    address->postal-data-extens_1 = i_extens_1. address->postal-datax-extens_1 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_extens_2.
    address->postal-data-extens_2 = i_extens_2. address->postal-datax-extens_2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_floor.
    address->postal-data-floor = i_floor. address->postal-datax-floor = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_from_date.
    address->postal-data-from_date = i_from_date. address->postal-datax-from_date = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_homecityno.
    address->postal-data-homecityno = i_homecityno. address->postal-datax-homecityno = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_home_city.
    address->postal-data-home_city = i_home_city. address->postal-datax-home_city = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_house_no.
    address->postal-data-house_no = i_house_no. address->postal-datax-house_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_house_no2.
    address->postal-data-house_no2 = i_house_no2. address->postal-datax-house_no2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_house_no3.
    address->postal-data-house_no3 = i_house_no3. address->postal-datax-house_no3 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_langu.
    address->postal-data-langu = i_langu. address->postal-datax-langu = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_langucriso.
    address->postal-data-langucriso = i_langucriso. address->postal-datax-langucriso = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_langu_cr.
    address->postal-data-langu_cr = i_langu_cr. address->postal-datax-langu_cr = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_langu_iso.
    address->postal-data-langu_iso = i_langu_iso. address->postal-datax-langu_iso = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_location.
    address->postal-data-location = i_location. address->postal-datax-location = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_name.
    address->postal-data-name = i_name. address->postal-datax-name = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_name_2.
    address->postal-data-name_2 = i_name_2. address->postal-datax-name_2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_name_3.
    address->postal-data-name_3 = i_name_3. address->postal-datax-name_3 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_name_4.
    address->postal-data-name_4 = i_name_4. address->postal-datax-name_4 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_pboxcit_no.
    address->postal-data-pboxcit_no = i_pboxcit_no. address->postal-datax-pboxcit_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_pcode1_ext.
    address->postal-data-pcode1_ext = i_pcode1_ext. address->postal-datax-pcode1_ext = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_pcode2_ext.
    address->postal-data-pcode2_ext = i_pcode2_ext. address->postal-datax-pcode2_ext = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_pcode3_ext.
    address->postal-data-pcode3_ext = i_pcode3_ext. address->postal-datax-pcode3_ext = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_pobox_ctry.
    address->postal-data-pobox_ctry = i_pobox_ctry. address->postal-datax-pobox_ctry = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_postl_cod1.
    address->postal-data-postl_cod1 = i_postl_cod1. address->postal-datax-postl_cod1 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_postl_cod2.
    address->postal-data-postl_cod2 = i_postl_cod2. address->postal-datax-postl_cod2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_postl_cod3.
    address->postal-data-postl_cod3 = i_postl_cod3. address->postal-datax-postl_cod3 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_box.
    address->postal-data-po_box = i_po_box. address->postal-datax-po_box = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_box_cit.
    address->postal-data-po_box_cit = i_po_box_cit. address->postal-datax-po_box_cit = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_box_lobby.
    address->postal-data-po_box_lobby = i_po_box_lobby. address->postal-datax-po_box_lobby = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_box_reg.
    address->postal-data-po_box_reg = i_po_box_reg. address->postal-datax-po_box_reg = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_ctryiso.
    address->postal-data-po_ctryiso = i_po_ctryiso. address->postal-datax-po_ctryiso = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_po_w_o_no.
    address->postal-data-po_w_o_no = i_po_w_o_no. address->postal-datax-po_w_o_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_regiogroup.
    address->postal-data-regiogroup = i_regiogroup. address->postal-datax-regiogroup = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_region.
    address->postal-data-region = i_region. address->postal-datax-region = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_room_no.
    address->postal-data-room_no = i_room_no. address->postal-datax-room_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_sort1.
    address->postal-data-sort1 = i_sort1. address->postal-datax-sort1 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_sort2.
    address->postal-data-sort2 = i_sort2. address->postal-datax-sort2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_street.
    address->postal-data-street = i_street. address->postal-datax-street = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_street_no.
    address->postal-data-street_no = i_street_no. address->postal-datax-street_no = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_str_abbr.
    address->postal-data-str_abbr = i_str_abbr. address->postal-datax-str_abbr = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_str_suppl1.
    address->postal-data-str_suppl1 = i_str_suppl1. address->postal-datax-str_suppl1 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_str_suppl2.
    address->postal-data-str_suppl2 = i_str_suppl2. address->postal-datax-str_suppl2 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_str_suppl3.
    address->postal-data-str_suppl3 = i_str_suppl3. address->postal-datax-str_suppl3 = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_taxjurcode.
    address->postal-data-taxjurcode = i_taxjurcode. address->postal-datax-taxjurcode = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_time_zone.
    address->postal-data-time_zone = i_time_zone. address->postal-datax-time_zone = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_title.
    address->postal-data-title = i_title. address->postal-datax-title = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_township.
    address->postal-data-township = i_township. address->postal-datax-township = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_township_code.
    address->postal-data-township_code = i_township_code. address->postal-datax-township_code = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_to_date.
    address->postal-data-to_date = i_to_date. address->postal-datax-to_date = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.


  METHOD set_transpzone.
    address->postal-data-transpzone = i_transpzone. address->postal-datax-transpzone = abap_true .
    address->task = zcl_vmd_util=>mode-modify.
  ENDMETHOD.
ENDCLASS.
