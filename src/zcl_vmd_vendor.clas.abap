CLASS zcl_vmd_vendor DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA vendor TYPE lfa1-lifnr READ-ONLY .
    DATA mode TYPE zcl_vmd_util=>t_mode .
    DATA central TYPE REF TO zcl_vmd_central .
    DATA address TYPE REF TO zcl_vmd_address .
    DATA vat TYPE REF TO zcl_vmd_vat .
    DATA texts TYPE REF TO zcl_vmd_texts .
    DATA extension_id TYPE guid_32 READ-ONLY .
    "data TAX_INDICATOR type ref to ZCL_VMD_TAX_IND .

    METHODS constructor
      IMPORTING
        VALUE(i_vendor)            TYPE lfa1-lifnr OPTIONAL
        VALUE(i_extension_classes) TYPE zcl_vmd_extensions=>tt_extension_classes OPTIONAL
      RAISING
        zcx_vmd_vendor .
    "! Gets all vendor data from DB and store it in VMD_EI_API structure
    METHODS get_data
      IMPORTING
        !i_reread_db         TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(r_master_data) TYPE vmds_ei_extern
      RAISING
        zcx_vmd_vendor .
    METHODS save
      IMPORTING
        !i_test_run          TYPE abap_bool DEFAULT abap_false
        !i_wait_after_commit TYPE abap_bool DEFAULT abap_false
      EXPORTING
        !e_vendor            TYPE lfa1-lifnr
      RETURNING
        VALUE(r_master_data) TYPE vmds_ei_extern
      RAISING
        zcx_vmd_vendor .
    "! If you'd like to fill all data by yourself.
    METHODS set_master_data
      IMPORTING
        !i_master_data TYPE vmds_ei_extern .
    METHODS add_new_contact
      RETURNING
        VALUE(r_contact) TYPE REF TO zcl_vmd_contact .
    METHODS change_contact
      IMPORTING
        VALUE(i_contact) TYPE knvp-parnr
      RETURNING
        VALUE(r_contact) TYPE REF TO zcl_vmd_contact
      RAISING
        zcx_vmd_vendor .
    METHODS get_contact
      IMPORTING
        VALUE(i_contact) TYPE knvp-parnr
      RETURNING
        VALUE(r_contact) TYPE REF TO zcl_vmd_contact
      RAISING
        zcx_vmd_vendor .
    METHODS get_contact_by_name
      IMPORTING
        VALUE(i_firstname) TYPE bapiad3vl-firstname
        VALUE(i_lastname)  TYPE bapiad3vl-lastname
      RETURNING
        VALUE(r_contact)   TYPE REF TO zcl_vmd_contact
      RAISING
        zcx_vmd_vendor .
    "! @parameter i_contact |
    "! @parameter i_raise_error | Default set to False, as if contact does not exists then it's no problem that it cannot be deleted
    "! @parameter r_contact |
    "! @raising zcx_VMD_vendor |
    METHODS delete_contact
      IMPORTING
        VALUE(i_contact)     TYPE knvp-parnr
        VALUE(i_raise_error) TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(r_contact)     TYPE REF TO zcl_vmd_contact
      RAISING
        zcx_vmd_vendor .
    METHODS change_purchasing_org
      IMPORTING
        VALUE(i_purchasing_org) TYPE ekorg
      RETURNING
        VALUE(r_purchasing)     TYPE REF TO zcl_vmd_purchasing
      RAISING
        zcx_vmd_vendor .
    METHODS create_purchasing_org
      IMPORTING
        VALUE(i_purchasing_org) TYPE ekorg
      RETURNING
        VALUE(r_purchasing)     TYPE REF TO zcl_vmd_purchasing
      RAISING
        zcx_vmd_vendor .
    METHODS delete_purchasing_org
      IMPORTING
        VALUE(i_purchasing_org) TYPE ekorg
      RETURNING
        VALUE(r_purchasing)     TYPE REF TO zcl_vmd_purchasing
      RAISING
        zcx_vmd_vendor .
    METHODS get_purchasing_org
      IMPORTING
        VALUE(i_purchasing_org) TYPE ekorg
      RETURNING
        VALUE(r_purchasing)     TYPE REF TO zcl_vmd_purchasing
      RAISING
        zcx_vmd_vendor .
    METHODS change_company
      IMPORTING
        VALUE(i_company_code) TYPE bukrs
      RETURNING
        VALUE(r_company)      TYPE REF TO zcl_vmd_company
      RAISING
        zcx_vmd_vendor .
    METHODS create_company
      IMPORTING
        VALUE(i_company_code) TYPE bukrs
      RETURNING
        VALUE(r_company)      TYPE REF TO zcl_vmd_company
      RAISING
        zcx_vmd_vendor .
    METHODS delete_company
      IMPORTING
        VALUE(i_company_code) TYPE bukrs
      RETURNING
        VALUE(r_company)      TYPE REF TO zcl_vmd_company
      RAISING
        zcx_vmd_vendor .
    METHODS get_company
      IMPORTING
        VALUE(i_company_code) TYPE bukrs
      RETURNING
        VALUE(r_company)      TYPE REF TO zcl_vmd_company
      RAISING
        zcx_vmd_vendor .
  PROTECTED SECTION.

    DATA master_data TYPE vmds_ei_extern .
    DATA original_data TYPE vmds_ei_extern .

    METHODS lock
      RAISING
        zcx_vmd_vendor .
    METHODS unlock
      RAISING
        zcx_vmd_vendor .
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_vendor IMPLEMENTATION.


  METHOD add_new_contact.
    TRY.
        r_contact ?= zcl_vmd_contact=>create_instance( i_extension_id = extension_id
                                                       i_vendor = vendor ).
        INSERT INITIAL LINE INTO TABLE master_data-central_data-contact-contacts REFERENCE INTO DATA(cont).
        IF sy-subrc EQ 0.
          r_contact->set_data( cont ).
        ENDIF.
      CATCH zcx_vmd_vendor.
        "In case of new contact there should not be any error here
    ENDTRY.
  ENDMETHOD.


  METHOD change_company.

    ASSIGN master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] TO FIELD-SYMBOL(<company>).
    IF sy-subrc EQ 0.
      r_company ?= zcl_vmd_company=>create_instance( i_extension_id = extension_id ).
      r_company->set_data( REF #( <company> ) ).
      r_company->set_task( zcl_vmd_util=>mode-change ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 013
          v1 = CONV #( i_company_code ).
    ENDIF.

  ENDMETHOD.


  METHOD change_contact.
    CHECK i_contact IS NOT INITIAL.
    TRY.
        r_contact ?= zcl_vmd_contact=>create_instance( i_extension_id = extension_id
                                                       i_vendor = vendor
                                                       i_contact  = i_contact ).
        ASSIGN master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] TO FIELD-SYMBOL(<cont>).
        IF sy-subrc EQ 0.
          r_contact->set_data( REF #( <cont> ) ).
          r_contact->set_mode( zcl_vmd_util=>mode-change ).
        ENDIF.

      CATCH zcx_vmd_vendor INTO DATA(e).
        "Contact doesn't exists
        RAISE EXCEPTION TYPE zcx_vmd_vendor
          EXPORTING
            id = e->if_t100_message~t100key-msgid
            no = e->if_t100_message~t100key-msgno
            v1 = e->if_t100_message~t100key-attr1
            v2 = e->if_t100_message~t100key-attr2
            v3 = e->if_t100_message~t100key-attr3
            v4 = e->if_t100_message~t100key-attr4.
    ENDTRY.

  ENDMETHOD.


  METHOD change_purchasing_org.
    ASSIGN master_data-purchasing_data-purchasing[ data_key-ekorg = i_purchasing_org
                                                                      ] TO FIELD-SYMBOL(<purchasing>).
    IF sy-subrc EQ 0.
      r_purchasing ?= zcl_vmd_purchasing=>create_instance( i_extension_id = extension_id ).
      r_purchasing->set_data( REF #( <purchasing> ) ).
      r_purchasing->set_task( zcl_vmd_util=>mode-change ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 005
          v1 = CONV #( vendor )
          v2 = CONV #( i_purchasing_org ).
    ENDIF.
  ENDMETHOD.


  METHOD constructor.
    vendor = |{ i_vendor  ALPHA = IN }|.

    extension_id = zcl_vmd_extensions=>set_extensions( extensions = i_extension_classes ).
    IF vendor IS INITIAL OR vendor CO '0'.
      mode = zcl_vmd_util=>mode-create.
      master_data-header-object_task = zcl_vmd_util=>mode-create.
    ELSE.
      SELECT SINGLE lifnr INTO @vendor
          FROM lfa1
          WHERE lifnr EQ @vendor.
      IF sy-subrc NE 0.
        RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING no = 001 v1 = CONV #( vendor ).
      ENDIF.
      get_data( ).
    ENDIF.

    central ?= zcl_vmd_central=>create_instance( i_extension_id = extension_id i_data = REF #( master_data-central_data-central-data )
                                        i_datax = REF #( master_data-central_data-central-datax ) ).
    address ?= zcl_vmd_address=>create_instance( i_extension_id = extension_id ).
    address->set_data( REF #( master_data-central_data-address ) ).
    texts ?= zcl_vmd_texts=>create_instance( i_extension_id = extension_id i_texts =  REF #( master_data-central_data-text )  ).
    vat   ?=  zcl_vmd_vat=>create_instance( i_extension_id = extension_id i_vat =  REF #( master_data-central_data-vat_number ) ).
*    tax_indicator ?= zcl_VMD_tax_ind=>create_instance( i_extension_id = extension_id i_tax_ind = ref #( master_data-central_data-tax_ind ) ).
  ENDMETHOD.


  METHOD create_company.

    ASSIGN master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] TO FIELD-SYMBOL(<company>).
    IF sy-subrc NE 0.
      INSERT VALUE #( task = zcl_vmd_util=>mode-create
                      data_key-bukrs = i_company_code
                    ) INTO TABLE master_data-company_data-company REFERENCE INTO DATA(company).
      IF sy-subrc EQ 0.
        r_company ?= zcl_vmd_company=>create_instance( i_extension_id = extension_id ).
        r_company->set_data( company ).
      ENDIF.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 014
          v1 = CONV #( i_company_code ).
    ENDIF.

  ENDMETHOD.


  METHOD create_purchasing_org.
    ASSIGN master_data-purchasing_data-purchasing[ data_key-ekorg = i_purchasing_org
                                                                      ] TO FIELD-SYMBOL(<purchasing>).
    IF sy-subrc NE 0.
      r_purchasing ?= zcl_vmd_purchasing=>create_instance( i_extension_id = extension_id ).
      INSERT VALUE #( data_key-ekorg = i_purchasing_org
                     ) INTO TABLE master_data-purchasing_data-purchasing REFERENCE INTO DATA(purchasing).
      IF sy-subrc EQ 0.
        r_purchasing->set_data( purchasing ).
        r_purchasing->set_task( zcl_vmd_util=>mode-create ).
      ENDIF.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 006
          v1 = CONV #( vendor )
          v2 = CONV #( i_purchasing_org ).
    ENDIF.
  ENDMETHOD.


  METHOD delete_company.

    ASSIGN master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] TO FIELD-SYMBOL(<company>).
    IF sy-subrc EQ 0.
      r_company ?= zcl_vmd_company=>create_instance( i_extension_id = extension_id ).
      r_company->set_data( REF #( <company> ) ).
      r_company->set_loevm( abap_true ).
      r_company->set_task( zcl_vmd_util=>mode-change ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 013
          v1 = CONV #( i_company_code ).
    ENDIF.

  ENDMETHOD.


  METHOD delete_contact.
    CHECK i_contact IS NOT INITIAL.
    TRY.
        r_contact ?= zcl_vmd_contact=>create_instance( i_extension_id = extension_id
                                                       i_vendor = vendor
                                                       i_contact  = i_contact ).
        ASSIGN master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] TO FIELD-SYMBOL(<cont>).
        IF sy-subrc EQ 0.
          " This is needed as in other case contact data are deleted in internal table
          " and there is an error that name is initial. So me must clear current state and
          " set all contacts as to be updated.
          CLEAR master_data-central_data-contact-current_state.
          LOOP AT master_data-central_data-contact-contacts ASSIGNING FIELD-SYMBOL(<cc>) WHERE task IS INITIAL.
            <cc>-task = zcl_vmd_util=>mode-change.
          ENDLOOP.
          r_contact->set_data( REF #( <cont> ) ).
          r_contact->set_mode( zcl_vmd_util=>mode-delete ).
        ENDIF.

      CATCH zcx_vmd_vendor INTO DATA(e).
        "Contact doesn't exists
        IF i_raise_error EQ abap_true.
          RAISE EXCEPTION TYPE zcx_vmd_vendor
            EXPORTING
              id = e->if_t100_message~t100key-msgid
              no = e->if_t100_message~t100key-msgno
              v1 = e->if_t100_message~t100key-attr1
              v2 = e->if_t100_message~t100key-attr2
              v3 = e->if_t100_message~t100key-attr3
              v4 = e->if_t100_message~t100key-attr4.
        ENDIF.
    ENDTRY.

  ENDMETHOD.


  METHOD delete_purchasing_org.
    ASSIGN master_data-purchasing_data-purchasing[ data_key-ekorg = i_purchasing_org
                                                                      ] TO FIELD-SYMBOL(<purchasing>).
    IF sy-subrc EQ 0.
      r_purchasing ?= zcl_vmd_purchasing=>create_instance( i_extension_id = extension_id ).
      r_purchasing->set_data( REF #( <purchasing> ) ).
      r_purchasing->set_loevm( abap_true ).
      r_purchasing->set_task( zcl_vmd_util=>mode-change ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 005
          v1 = CONV #( vendor )
          v2 = CONV #( i_purchasing_org ).
    ENDIF.
  ENDMETHOD.


  METHOD get_company.
    ASSIGN master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                         ] TO FIELD-SYMBOL(<company>).
    IF sy-subrc EQ 0.
      r_company ?= zcl_vmd_company=>create_instance( i_extension_id = extension_id ).
      r_company->set_data( REF #( <company> ) ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 013
          v1 = CONV #( i_company_code ).
    ENDIF.
  ENDMETHOD.


  METHOD get_contact.

    TRY.
        r_contact ?= zcl_vmd_contact=>create_instance( i_extension_id = extension_id
                                                       i_vendor = vendor
                                                       i_contact  = i_contact ).
        ASSIGN master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] TO FIELD-SYMBOL(<cont>).
        IF sy-subrc EQ 0.
          r_contact->set_data( REF #( <cont> ) ).
          r_contact->set_mode( zcl_vmd_util=>mode-change ).
        ENDIF.
      CATCH zcx_vmd_vendor INTO DATA(e).
        "Contact doesn't exists
        RAISE EXCEPTION TYPE zcx_vmd_vendor
          EXPORTING
            id = e->if_t100_message~t100key-msgid
            no = e->if_t100_message~t100key-msgno
            v1 = e->if_t100_message~t100key-attr1
            v2 = e->if_t100_message~t100key-attr2
            v3 = e->if_t100_message~t100key-attr3
            v4 = e->if_t100_message~t100key-attr4.
    ENDTRY.



  ENDMETHOD.


  METHOD get_contact_by_name.
    CHECK i_lastname IS NOT INITIAL.
    ASSIGN master_data-central_data-contact-contacts[  address_type_3-postal-data-firstname  = i_firstname
                                                       address_type_3-postal-data-lastname   = i_lastname
                                                         ] TO FIELD-SYMBOL(<cont>).
    IF sy-subrc EQ 0.
      TRY.
          r_contact ?= zcl_vmd_contact=>create_instance( i_extension_id = extension_id
                                                         i_vendor = vendor
                                                         i_contact  = <cont>-data_key-parnr ).
          r_contact->set_data( REF #( <cont> ) ).
          r_contact->set_mode( zcl_vmd_util=>mode-change ).
        CATCH zcx_vmd_vendor INTO DATA(e).
          "Contact doesn't exists
          RAISE EXCEPTION TYPE zcx_vmd_vendor
            EXPORTING
              id = e->if_t100_message~t100key-msgid
              no = e->if_t100_message~t100key-msgno
              v1 = e->if_t100_message~t100key-attr1
              v2 = e->if_t100_message~t100key-attr2
              v3 = e->if_t100_message~t100key-attr3
              v4 = e->if_t100_message~t100key-attr4.
      ENDTRY.
    ENDIF.



  ENDMETHOD.


  METHOD get_data.
    CHECK vendor IS NOT INITIAL.

    IF i_reread_db EQ abap_true.
      vmd_ei_api_extract=>get_data(
        EXPORTING
          is_master_data = VALUE #( vendors = VALUE #( ( header = VALUE #( object_task = zcl_vmd_util=>mode-modify object_instance = vendor ) ) ) )
          i_always_get_contacts = 'X'
        IMPORTING
          es_master_data = DATA(es_master_data)
          es_error       = DATA(e_error)
      ).
      IF e_error-is_error EQ abap_false.
        ASSIGN es_master_data-vendors[ 1 ] TO FIELD-SYMBOL(<vendor>).
        IF sy-subrc EQ 0.
          r_master_data = <vendor>.
          master_data = <vendor>.
          original_data = <vendor>.

        ENDIF.
      ELSE.
        RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING messages = e_error-messages.
      ENDIF.
    ELSE.
      r_master_data = master_data.
    ENDIF.
  ENDMETHOD.


  METHOD get_purchasing_org.
    ASSIGN master_data-purchasing_data-purchasing[ data_key-ekorg = i_purchasing_org
                                                                      ] TO FIELD-SYMBOL(<purchasing>).
    IF sy-subrc EQ 0.
      r_purchasing ?= zcl_vmd_purchasing=>create_instance( i_extension_id = extension_id ).
      r_purchasing->set_data( REF #( <purchasing> ) ).
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 005
          v1 = CONV #( vendor )
          v2 = CONV #( i_purchasing_org ).
    ENDIF.
  ENDMETHOD.


  METHOD lock.
    CHECK vendor IS NOT INITIAL.
    CALL FUNCTION 'ENQUEUE_EXLFA1'
      EXPORTING
        mode_lfa1      = 'E'
        mandt          = sy-mandt
        lifnr          = vendor
*       x_lifnr        = x_lifnr    " Fill argument 02 with initial value?
*       _scope         = _scope
*       _wait          = _wait
*       _collect       = _collect    " Initially only collect lock
      EXCEPTIONS
        foreign_lock   = 1
        system_failure = 2
        OTHERS         = 3.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          id = sy-msgid
          no = sy-msgno
          v1 = CONV #( sy-msgv1 )
          v2 = CONV #( sy-msgv2 )
          v3 = CONV #( sy-msgv3 )
          v4 = CONV #( sy-msgv4 ).
    ENDIF.
  ENDMETHOD.


  METHOD save.


    IF master_data IS INITIAL.
      RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING no = 002.
    ENDIF.


    lock( ).

    "Delete Not changed company code data
    IF mode NE zcl_vmd_util=>mode-create.
      DELETE master_data-company_data-company WHERE task IS INITIAL OR task EQ zcl_vmd_util=>mode-current_state.
    ENDIF.

    "Delete other PURCHASING orgs from the list to not check the authorizations.
    DELETE master_data-purchasing_data-purchasing WHERE task IS INITIAL OR task EQ zcl_vmd_util=>mode-current_state.


    DATA(bapi_structure) = VALUE vmds_ei_main( vendors = VALUE #( ( master_data ) ) ).


    vmd_ei_api=>maintain_bapi(
      EXPORTING
         iv_test_run              = i_test_run
         iv_collect_messages      = abap_true
         is_master_data           = VALUE #( vendors = VALUE #( ( master_data ) ) )
      IMPORTING
        es_master_data_correct   = DATA(correct_data)
        es_message_correct       = DATA(correct_messages)
        es_message_defective     = DATA(error_messages)
        ).

    IF error_messages-is_error EQ abap_false AND i_test_run EQ abap_false.

      IF error_messages-is_error EQ abap_false.
        zcl_vmd_util=>commit_work( i_wait = i_wait_after_commit ).
        unlock( ).
        TRY.
            vendor = correct_data-vendors[ 1 ]-header-object_instance-lifnr.
            mode = zcl_vmd_util=>mode-change.
            e_vendor = vendor.
          CATCH cx_sy_itab_line_not_found.

        ENDTRY.
      ELSE.
        zcl_vmd_util=>rollback_work( ).
        unlock( ).
        RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING no = 003 messages = error_messages-messages.
      ENDIF.
    ELSEIF error_messages-is_error EQ abap_true.
      IF i_test_run EQ abap_false.
        zcl_vmd_util=>rollback_work( ).
      ENDIF.
      unlock( ).
      RAISE EXCEPTION TYPE zcx_vmd_vendor EXPORTING no = 003 messages = error_messages-messages.
    ENDIF.

  ENDMETHOD.


  METHOD set_master_data.
    master_data = i_master_data.
  ENDMETHOD.


  METHOD unlock.
    CALL FUNCTION 'DEQUEUE_EXLFA1'
      EXPORTING
        mode_lfa1 = 'E'
        mandt     = sy-mandt    " 01th enqueue argument
        lifnr     = vendor
*       x_lifnr   = x_lifnr    " Fill argument 02 with initial value?
*       _scope    = _scope
*       _synchron = _synchron    " Synchonous unlock
*       _collect  = _collect    " Initially only collect lock
      .
  ENDMETHOD.
ENDCLASS.
