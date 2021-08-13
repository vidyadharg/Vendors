*Demo on deleting contact person
REPORT zdemo_vmd05.

PARAMETERS: p_custom TYPE lfa1-lifnr OBLIGATORY,
            p_cont   TYPE knvk-parnr OBLIGATORY.

TRY.
    DATA(vendor) = NEW zcl_vmd_vendor( i_vendor = p_custom ).
    DATA(contact) = vendor->delete_contact( p_cont ).
    vendor->save( ).
  CATCH zcx_vmd_vendor.
ENDTRY.
