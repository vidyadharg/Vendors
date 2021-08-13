*Demo on changing contact person
REPORT zdemo_vmd04.


PARAMETERS: p_custom TYPE lfa1-lifnr OBLIGATORY,
            p_fname  TYPE bapiad3vl-firstname OBLIGATORY,
            p_lname  TYPE bapiad3vl-lastname OBLIGATORY.

TRY.
    DATA(vendor) = NEW zcl_vmd_vendor( i_vendor = p_custom ).
    DATA(contact) = vendor->get_contact_by_name(
                    i_firstname      = p_fname
                    i_lastname       = p_lname ).
    contact->set_addr_lastname( 'LastName2' ).
    contact->set_addr_firstname( 'FirstName2' ).
    vendor->save( ).

  CATCH zcx_vmd_vendor.
ENDTRY.
