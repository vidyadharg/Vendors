class ZCX_VMD_VENDOR definition
  public
  inheriting from CX_STATIC_CHECK
  create public .

public section.

  interfaces IF_T100_MESSAGE .

  constants MESSAGE_CLASS type SY-MSGID value 'Z_VMD_VENDORS' ##NO_TEXT.

  methods CONSTRUCTOR
    importing
      !ID like IF_T100_MESSAGE=>T100KEY-MSGID default MESSAGE_CLASS
      !NO like IF_T100_MESSAGE=>T100KEY-MSGNO default 666
      !V1 like IF_T100_MESSAGE=>T100KEY-ATTR1 optional
      !V2 like IF_T100_MESSAGE=>T100KEY-ATTR2 optional
      !V3 like IF_T100_MESSAGE=>T100KEY-ATTR3 optional
      !V4 like IF_T100_MESSAGE=>T100KEY-ATTR4 optional
      !MESSAGES type BAPIRET2_T optional
      !PREVIOUS like PREVIOUS optional .
  methods GET_MESSAGES
    returning
      value(R_MESSAGES) type BAPIRET2_T .

protected section.
private section.
  data MESSAGES type BAPIRET2_T .
ENDCLASS.



CLASS ZCX_VMD_VENDOR IMPLEMENTATION.


  method constructor ##ADT_SUPPRESS_GENERATION.
    call method super->constructor
      exporting
        previous = previous.

    clear textid.
    if id is initial.
      if_t100_message~t100key-msgid = message_class.
    else.
      if_t100_message~t100key-msgid = id.
    endif.
    if no is not supplied.
      if_t100_message~t100key-msgno = 666.
    else.
      if_t100_message~t100key-msgno = no.
    endif.

    if_t100_message~t100key-attr1 = v1.
    if_t100_message~t100key-attr2 = v2.
    if_t100_message~t100key-attr3 = v3.
    if_t100_message~t100key-attr4 = v4.

    if messages is not initial.
      me->messages = messages.
    endif.

  endmethod.

  method get_messages.
    if messages is not initial.
      r_messages = messages.
    else.

      r_messages = value #( (  type       = 'E'
                               id         = if_t100_message~t100key-msgid
                               number     = if_t100_message~t100key-msgno
                               message_v1 = if_t100_message~t100key-attr1
                               message_v2 = if_t100_message~t100key-attr2
                               message_v3 = if_t100_message~t100key-attr3
                               message_v4 = if_t100_message~t100key-attr4
                              ) ).
      assign r_messages[ 1 ] to field-symbol(<mes>).
      if sy-subrc eq 0.
        message id  if_t100_message~t100key-msgid type 'E' number if_t100_message~t100key-msgno
               with if_t100_message~t100key-attr1 if_t100_message~t100key-attr2
                    if_t100_message~t100key-attr3 if_t100_message~t100key-attr4 into <mes>-message.
      endif.

    endif.
  endmethod.
ENDCLASS.
