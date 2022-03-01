create or replace PACKAGE ZZPO_APPROVALS_PKG IS

  --Function get_total_po_amount (p_po_header_id number) return number;

  PROCEDURE rw_insert_data(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);
                           
   PROCEDURE rw_insert_po_data(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);                           

  PROCEDURE risk_works_notify(itemtype IN VARCHAR2,
                              itemkey  IN VARCHAR2,
                              actid    IN NUMBER,
                              funcmode IN VARCHAR2,
                              RESULT   IN OUT VARCHAR2);

  PROCEDURE deo_rev_notify(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);

  PROCEDURE vnc_rev_notify(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);

  PROCEDURE res_rev_notify(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);

  PROCEDURE board_notify(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);
                         
  PROCEDURE budget_notify(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);                       

  PROCEDURE upd_award_status(itemtype IN VARCHAR2,
                             itemkey  IN VARCHAR2,
                             actid    IN NUMBER,
                             funcmode IN VARCHAR2,
                             RESULT   IN OUT VARCHAR2);

  PROCEDURE wait_rworks_sts(itemtype IN VARCHAR2,
                            itemkey  IN VARCHAR2,
                            actid    IN NUMBER,
                            funcmode IN VARCHAR2,
                            RESULT   IN OUT VARCHAR2);

  PROCEDURE rworks_insert(itemtype IN VARCHAR2,
                          itemkey  IN VARCHAR2,
                          actid    IN NUMBER,
                          funcmode IN VARCHAR2,
                          RESULT   IN OUT VARCHAR2);

  PROCEDURE deo_insert(itemtype IN VARCHAR2,
                       itemkey  IN VARCHAR2,
                       actid    IN NUMBER,
                       funcmode IN VARCHAR2,
                       RESULT   IN OUT VARCHAR2);

  PROCEDURE res_insert(itemtype IN VARCHAR2,
                       itemkey  IN VARCHAR2,
                       actid    IN NUMBER,
                       funcmode IN VARCHAR2,
                       RESULT   IN OUT VARCHAR2);

  PROCEDURE board_insert(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);
                         
 PROCEDURE budget_insert(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);                         

  PROCEDURE vnc_insert(itemtype IN VARCHAR2,
                       itemkey  IN VARCHAR2,
                       actid    IN NUMBER,
                       funcmode IN VARCHAR2,
                       RESULT   IN OUT VARCHAR2);

  PROCEDURE final_notify(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);
  PROCEDURE final_insert(itemtype IN VARCHAR2,
                         itemkey  IN VARCHAR2,
                         actid    IN NUMBER,
                         funcmode IN VARCHAR2,
                         RESULT   IN OUT VARCHAR2);
  PROCEDURE check_po_award(itemtype IN VARCHAR2,
                           itemkey  IN VARCHAR2,
                           actid    IN NUMBER,
                           funcmode IN VARCHAR2,
                           RESULT   IN OUT VARCHAR2);

  PROCEDURE update_po_status(itemtype IN VARCHAR2,
                             itemkey  IN VARCHAR2,
                             actid    IN NUMBER,
                             funcmode IN VARCHAR2,
                             RESULT   IN OUT VARCHAR2);
  PROCEDURE should_notify_buyer(itemtype IN VARCHAR2,
                                itemkey  IN VARCHAR2,
                                actid    IN NUMBER,
                                funcmode IN VARCHAR2,
                                RESULT   IN OUT VARCHAR2);
  PROCEDURE notify_neg_team    (itemtype IN VARCHAR2,
                                itemkey  IN VARCHAR2,
                                actid    IN NUMBER,
                                funcmode IN VARCHAR2,
                                RESULT   IN OUT VARCHAR2);                                
END ZZPO_APPROVALS_PKG;
