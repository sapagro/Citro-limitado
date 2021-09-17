*&---------------------------------------------------------------------*
*& Report ZABS_REP_STORDENS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zabs_rep_mobqapp_rec.

*--Global data declarations
INCLUDE zabs_rep_mobqapp_rec_top.

*--Processing data
INCLUDE zabs_rep_mobqapp_rec_f01.

*&--------------------------------------------------------------------*
*&    AT SELECTION-SCREEN
*&--------------------------------------------------------------------*
*& Selection Screen Validations
*&--------------------------------------------------------------------*
AT SELECTION-SCREEN.

*--Selection Screen Validations
  PERFORM selection_validations.

*&--------------------------------------------------------------------*
*&    START-OF-SELECTION
*&--------------------------------------------------------------------*
*& Preparing Process Order Data
*&--------------------------------------------------------------------*
START-OF-SELECTION.

*--Validate Parameters
  PERFORM validate_parameters.

*--Refresh Global Data
  PERFORM refresh_global_data.

*--Preparing Mobility's Inspection Lot Data
  PERFORM build_data.

*&--------------------------------------------------------------------*
*&    END-OF-SELECTION
*&--------------------------------------------------------------------*
*& Display Mobility's Inspection Lot Data
*&--------------------------------------------------------------------*
END-OF-SELECTION.

*--Display Mobility's Inspection Lot Data
  PERFORM display_inspection_lot_data.

  IF gt_message[] IS NOT INITIAL.
    IF gs_variables-initiator IS INITIAL.
      gs_variables-initiator = c_log_initiator-save.
      PERFORM messages_initialize USING gs_variables-initiator
                                        c_log_subobject-save.
      PERFORM message_add_table.
      PERFORM messages_display USING gs_variables-initiator.
    ENDIF.
  ENDIF.
