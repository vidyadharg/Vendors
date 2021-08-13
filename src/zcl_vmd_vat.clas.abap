CLASS zcl_vmd_vat DEFINITION
  PUBLIC
  CREATE PROTECTED.

  PUBLIC SECTION.
    CLASS-METHODS: create_instance IMPORTING i_extension_id TYPE guid_32
                                             i_vat          TYPE REF TO cvis_ei_vat_numbers
                                   RETURNING VALUE(r_vat)   TYPE REF TO zcl_vmd_vat.

    METHODS add_vat_number
      IMPORTING
        VALUE(i_country) TYPE land1_gp
        VALUE(i_vat_no)  TYPE stceg
      RAISING
        zcx_vmd_vendor .
    METHODS change_vat_number
      IMPORTING
        VALUE(i_country) TYPE land1_gp
        VALUE(i_vat_no)  TYPE stceg
      RAISING
        zcx_vmd_vendor .
    METHODS delete_vat_number
      IMPORTING
        VALUE(i_country) TYPE land1_gp
      RAISING
        zcx_vmd_vendor .
    METHODS get_vat_number
      IMPORTING
        VALUE(i_country) TYPE land1_gp
      RETURNING
        VALUE(r_vat_no)  TYPE stceg
      RAISING
        zcx_vmd_vendor .
  PROTECTED SECTION.
    DATA: ref_data TYPE REF TO cvis_ei_vat_numbers.
    METHODS constructor IMPORTING i_vat TYPE REF TO cvis_ei_vat_numbers.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_vat IMPLEMENTATION.


  METHOD add_vat_number.

    ASSIGN ref_data->vat_numbers[ data_key-land1 = i_country ] TO FIELD-SYMBOL(<vat>).
    IF sy-subrc NE 0.
      INSERT VALUE #( task = zcl_vmd_util=>mode-create
                      data_key-land1 = i_country
                      data-stceg = i_vat_no
                    ) INTO TABLE ref_data->vat_numbers.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 010
          v1 = CONV #( i_country ).
    ENDIF.

  ENDMETHOD.


  METHOD change_vat_number.

    ASSIGN ref_data->vat_numbers[ data_key-land1 = i_country ] TO FIELD-SYMBOL(<vat>).
    IF sy-subrc EQ 0.
      <vat>-task = zcl_vmd_util=>mode-change.
      <vat>-data-stceg = i_vat_no.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 009
          v1 = CONV #( i_country ).
    ENDIF.

  ENDMETHOD.


  METHOD constructor.
    ref_data = i_vat.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_vat = NEW #( i_vat = i_vat ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-vat ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_vat       = i_vat.
          r_vat ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_vat = NEW #( i_vat = i_vat ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete_vat_number.

    ASSIGN ref_data->vat_numbers[ data_key-land1 = i_country ] TO FIELD-SYMBOL(<vat>).
    IF sy-subrc EQ 0.
      <vat>-task = zcl_vmd_util=>mode-delete.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 009
          v1 = CONV #( i_country ).
    ENDIF.

  ENDMETHOD.


  METHOD get_vat_number.

    ASSIGN ref_data->vat_numbers[ data_key-land1 = i_country ] TO FIELD-SYMBOL(<vat>).
    IF sy-subrc EQ 0.
      r_vat_no = <vat>-data-stceg.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 009
          v1 = CONV #( i_country ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
