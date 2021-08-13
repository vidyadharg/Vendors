*& Report  zdemo_vmd02
REPORT zdemo_vmd02.

PARAMETERS:
  p_custom     TYPE lfa1-lifnr,
  p_purchs TYPE lfm1-ekorg.

CLASS lcl_vendor DEFINITION CREATE PUBLIC INHERITING FROM zcl_vmd_vendor.

  PUBLIC SECTION.
    METHODS: constructor IMPORTING
                           VALUE(i_vendor) TYPE lfa1-lifnr OPTIONAL
                         RAISING
                           zcx_vmd_vendor .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_vendor IMPLEMENTATION.

  METHOD constructor.
    super->constructor( EXPORTING i_vendor = i_vendor
                                  i_extension_classes = VALUE #( (  type = zcl_vmd_extensions=>class_extension-purchase
                                                                    name = 'LCL_VMD_PURCHASING' ) ) ).
  ENDMETHOD.

ENDCLASS.

CLASS lcl_vmd_purchasing DEFINITION CREATE PUBLIC INHERITING FROM zcl_vmd_purchasing.

  PUBLIC SECTION.
    METHODS: new_method.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_vmd_purchasing IMPLEMENTATION.

  METHOD new_method.

  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  TRY.
      DATA(vendor) = NEW lcl_vendor( i_vendor = p_custom ).
      DATA(purchasing_org) = CAST lcl_vmd_purchasing( vendor->get_purchasing_org(
        EXPORTING
          i_purchasing_org      = p_purchs
      ) ).
      purchasing_org->new_method( ).
      vendor->save( ).

    CATCH zcx_vmd_vendor.


  ENDTRY.
