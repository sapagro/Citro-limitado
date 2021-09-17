************************************************************************
*  Confidential property of Citrosuco                                  *
*  All Rights Reserved                                                 *
************************************************************************
* Report Name       :  ZABS_REP_CNFRM_TBL_DATA                         *
* Tcode             :  ZABS_TRN_BGDIS                                  *
* Created By        :                                                  *
* Requested by      :  Mario Alfredo                                   *
* Created on        :  24.09.2020                                      *
* TR                :  C4DK924087                                      *
* Version           :  001                                             *
* Description       :  Accomplishment Confirmation Data Display Report *
*----------------------------------------------------------------------*
*  Modification Log:                                                   *
*----------------------------------------------------------------------*
* MOD#|Date(MM.DD.YYYY)|Changed By| TR#       |Description             *
*                                                                      *
*&--------------------------------------------------------------------&*
REPORT zabs_rep_cnfrm_tbl_data.

*--Global data declarations
INCLUDE zabs_rep_cnfrm_tbl_data_top.

*--Processing data
INCLUDE zabs_rep_cnfrm_tbl_data_sub.

*&--------------------------------------------------------------------*
*& START-OF-SELECTION
*&--------------------------------------------------------------------*
*& START-OF-SELECTION
*&--------------------------------------------------------------------*
START-OF-SELECTION.

*--Fetching Accomplishment Confirmation data
PERFORM fetch_data.

*&--------------------------------------------------------------------*
*& END-OF-SELECTION
*&--------------------------------------------------------------------*
*& Display Data
*&--------------------------------------------------------------------*
END-OF-SELECTION.

*--Display data
 PERFORM display_data.
