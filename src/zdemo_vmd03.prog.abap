*Demo on changing contact person
report zdemo_vmd03.

parameters: p_custom type lfa1-lifnr obligatory,
            p_cont type knvk-parnr obligatory.

try.
    data(vendor) = new zcl_vmd_vendor( i_vendor = p_custom ).
    data(contact) = vendor->change_contact( i_contact = p_cont ).
    contact->set_addr_lastname( 'LastName' ).
    contact->set_addr_firstname( 'FirstName' ).
    contact->add_email( 'nomail@nomail.test').
    vendor->save( ).
  catch zcx_vmd_vendor.
endtry.
