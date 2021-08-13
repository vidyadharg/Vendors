*Demo on creating new simple contact person
REPORT zdemo_vmd01.


PARAMETERS: p_custom TYPE lfa1-lifnr.

TRY.
    DATA(vendor) = NEW zcl_vmd_vendor( i_vendor = p_custom ).
    DATA(contact) = vendor->add_new_contact( ).
    contact->set_addr_lastname( 'LastName' ).
    contact->set_addr_firstname( 'FirstName' ).
    vendor->save( ).

  CATCH zcx_vmd_vendor.


ENDTRY.
