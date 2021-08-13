CLASS zcl_vmd_texts DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    CLASS-METHODS create_instance
      IMPORTING
        !i_texts        TYPE REF TO cvis_ei_cvis_text
        !i_extension_id TYPE guid_32
      RETURNING
        VALUE(r_texts)  TYPE REF TO zcl_vmd_texts .
    METHODS add_text
      IMPORTING
        VALUE(i_id)       TYPE tdid
        VALUE(i_language) TYPE spras
        VALUE(i_text)     TYPE tline_tab
      RAISING
        zcx_vmd_vendor .
    METHODS change_text
      IMPORTING
        VALUE(i_id)       TYPE tdid
        VALUE(i_language) TYPE spras
        VALUE(i_text)     TYPE tline_tab
      RAISING
        zcx_vmd_vendor .
    METHODS delete_text
      IMPORTING
        VALUE(i_id)       TYPE tdid
        VALUE(i_language) TYPE spras
      RAISING
        zcx_vmd_vendor .
    METHODS get_text
      IMPORTING
        VALUE(i_id)       TYPE tdid
        VALUE(i_language) TYPE spras
      RETURNING
        VALUE(r_text)     TYPE tline_tab
      RAISING
        zcx_vmd_vendor .
  PROTECTED SECTION.
    DATA: ref_data TYPE REF TO cvis_ei_cvis_text.
    METHODS constructor
      IMPORTING
        !i_texts TYPE REF TO cvis_ei_cvis_text .

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_texts IMPLEMENTATION.


  METHOD add_text.
    ASSIGN ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] TO FIELD-SYMBOL(<tx>).
    IF sy-subrc NE 0.
      INSERT VALUE #( data_key-text_id = i_id
                      data_key-langu = i_language
                      data = i_text
                      task = zcl_vmd_util=>mode-create
                    ) INTO TABLE ref_data->texts.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 007
          v1 = CONV #( i_id ).
    ENDIF.
  ENDMETHOD.


  METHOD change_text.
    ASSIGN ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] TO FIELD-SYMBOL(<tx>).
    IF sy-subrc EQ 0.
      <tx>-task = zcl_vmd_util=>mode-change.
      <tx>-data = i_text.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 008
          v1 = CONV #( i_id ).
    ENDIF.
  ENDMETHOD.


  METHOD constructor.
    CHECK i_texts IS NOT INITIAL.
    ref_data = i_texts.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_texts = NEW #( i_texts = i_texts ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-texts ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_texts       = i_texts.
          r_texts ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_texts = NEW #( i_texts = i_texts ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete_text.
    ASSIGN ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] TO FIELD-SYMBOL(<tx>).
    IF sy-subrc EQ 0.
      <tx>-task = zcl_vmd_util=>mode-delete.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 008
          v1 = CONV #( i_id ).
    ENDIF.

  ENDMETHOD.


  METHOD get_text.
    ASSIGN ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] TO FIELD-SYMBOL(<tx>).
    IF sy-subrc EQ 0.
      r_text = <tx>-data.
    ELSE.
      RAISE EXCEPTION TYPE zcx_vmd_vendor
        EXPORTING
          no = 008
          v1 = CONV #( i_id ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
