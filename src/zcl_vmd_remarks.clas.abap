CLASS zcl_vmd_remarks DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.

    CLASS-METHODS: create_instance IMPORTING i_extension_id   TYPE guid_32
                                             i_data           TYPE REF TO cvis_ei_cvi_rem
                                   RETURNING VALUE(r_remarks) TYPE REF TO zcl_vmd_remarks.

    METHODS add_remark
      IMPORTING
        VALUE(i_remark)       TYPE ad_remark1
        VALUE(i_language)     TYPE spras DEFAULT sy-langu
        VALUE(i_language_iso) TYPE spras_iso OPTIONAL .
    METHODS delete_remark
      IMPORTING
        VALUE(i_remark)       TYPE ad_remark1
        VALUE(i_language)     TYPE spras OPTIONAL
        VALUE(i_language_iso) TYPE spras_iso OPTIONAL .
    METHODS change_remark
      IMPORTING
        VALUE(i_remark)       TYPE ad_remark1
        VALUE(i_language)     TYPE spras DEFAULT sy-langu
        VALUE(i_language_iso) TYPE spras_iso OPTIONAL .
  PROTECTED SECTION.
    DATA: ref_data TYPE REF TO cvis_ei_cvi_rem.
    METHODS constructor
      IMPORTING
        !i_data TYPE REF TO cvis_ei_cvi_rem .
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_remarks IMPLEMENTATION.


  METHOD add_remark.
    IF i_language_iso IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu_iso = i_language_iso ] TO FIELD-SYMBOL(<rem>).
    ELSEIF i_language IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu = i_language ] TO <rem>.
    ENDIF.
    IF <rem> IS NOT ASSIGNED.
      IF i_language_iso IS NOT INITIAL.
        INSERT VALUE #( task = zcl_vmd_util=>mode-create data-langu_iso = i_language_iso  data-adr_notes = i_remark ) INTO TABLE ref_data->remarks.
      ELSEIF i_language IS NOT INITIAL.
        INSERT VALUE #( task = zcl_vmd_util=>mode-create data-langu = i_language  data-adr_notes = i_remark ) INTO TABLE ref_data->remarks.
      ENDIF.
    ELSE.
      change_remark(
        EXPORTING
          i_remark       = i_remark
          i_language     = i_language
          i_language_iso = i_language_iso
      ).
    ENDIF.
  ENDMETHOD.


  METHOD change_remark.
    IF i_language_iso IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu_iso = i_language_iso ] TO FIELD-SYMBOL(<rem>).
    ELSEIF i_language IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu = i_language ] TO <rem>.
    ENDIF.
    IF <rem> IS NOT ASSIGNED AND ( i_language_iso IS NOT INITIAL OR i_language IS NOT INITIAL ).
      INSERT INITIAL LINE INTO TABLE ref_data->remarks ASSIGNING <rem>.
      IF sy-subrc EQ 0.
        IF i_language_iso IS NOT INITIAL.
          <rem>-data-langu_iso = i_language_iso.
        ELSEIF i_language IS NOT INITIAL.
          <rem>-data-langu = i_language.
        ENDIF.
      ENDIF.
    ENDIF.
    IF <rem> IS ASSIGNED.
      <rem>-task = zcl_vmd_util=>mode-change.
      <rem>-data-adr_notes = i_remark.
    ENDIF.

  ENDMETHOD.


  METHOD constructor.
    ref_data = i_data.
  ENDMETHOD.


  METHOD create_instance.
    IF i_extension_id IS INITIAL.
      r_remarks = NEW #( i_data = i_data ).
    ELSE.
      DATA: subclass TYPE REF TO object.
      TRY.
          DATA(sublcass_abs_name) = zcl_vmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_vmd_extensions=>class_extension-remarks ).
          CREATE OBJECT subclass TYPE (sublcass_abs_name)
           EXPORTING
            i_data       = i_data.
          r_remarks ?= subclass.
        CATCH zcx_vmd_no_extension.
          r_remarks = NEW #( i_data = i_data ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.


  METHOD delete_remark.
    IF i_language_iso IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu_iso = i_language_iso ] TO FIELD-SYMBOL(<rem>).
    ELSEIF i_language IS NOT INITIAL.
      ASSIGN ref_data->remarks[ data-langu = i_language ] TO <rem>.
    ENDIF.
    IF <rem> IS  ASSIGNED.
      <rem>-task = zcl_vmd_util=>mode-delete.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
