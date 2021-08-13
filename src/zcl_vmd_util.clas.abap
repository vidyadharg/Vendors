CLASS zcl_vmd_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:    "! Mode for actions
      t_mode TYPE c LENGTH 1 .

    CONSTANTS:
      BEGIN OF mode,
        create        TYPE t_mode VALUE 'I',
        change        TYPE t_mode VALUE 'U',
        modify        TYPE t_mode VALUE 'M',
        delete        TYPE t_mode VALUE 'D',
        current_state TYPE t_mode VALUE 'X',
        undelete      TYPE t_mode VALUE 'R',
      END OF mode .
    CONSTANTS:
      BEGIN OF phone_type,
        fixed          TYPE bapiadtel-r_3_user VALUE '',
        fixed_default  TYPE bapiadtel-r_3_user VALUE 1,
        mobile         TYPE bapiadtel-r_3_user VALUE 2,
        mobile_default TYPE bapiadtel-r_3_user VALUE 3,
      END OF phone_type .
    CONSTANTS:
      BEGIN OF gender,
        male   TYPE c VALUE '1',
        female TYPE c VALUE '2',
      END OF gender .

    CLASS-METHODS commit_work
      IMPORTING
        !i_wait TYPE bapita-wait OPTIONAL
      RAISING
        zcx_vmd_vendor .
    CLASS-METHODS rollback_work .
    CLASS-METHODS set_datax_structure
      IMPORTING
        !i_source TYPE any
      CHANGING
        !c_target TYPE any .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vmd_util IMPLEMENTATION.


  METHOD commit_work.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
        wait = i_wait.
  ENDMETHOD.


  METHOD rollback_work.
    CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'.
  ENDMETHOD.


  METHOD set_datax_structure.
    FIELD-SYMBOLS: <src> TYPE any,
                   <tar> TYPE any.
    IF i_source IS NOT INITIAL.
      DO.
        ASSIGN COMPONENT sy-index OF STRUCTURE i_source TO <src>.
        IF sy-subrc EQ 0 AND <src> IS NOT INITIAL.
          ASSIGN COMPONENT sy-index OF STRUCTURE c_target TO <tar>.
          IF sy-subrc EQ 0.
            <tar> = abap_true.
          ELSE.
            EXIT.
          ENDIF.
        ELSEIF sy-subrc NE 0.
          EXIT.
        ENDIF.
      ENDDO.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
