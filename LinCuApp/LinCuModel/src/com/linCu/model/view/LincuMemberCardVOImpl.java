package com.linCu.model.view;

import com.linCu.model.view.common.LincuMemberCardVO;

import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Apr 03 10:26:00 IST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class LincuMemberCardVOImpl extends ViewObjectImpl implements LincuMemberCardVO {
    /**
     * This is the default constructor (do not remove).
     */
    public LincuMemberCardVOImpl() {
    }
    
    
    public void submitCard(){
        LincuMemberCardVORowImpl row = (LincuMemberCardVORowImpl)this.getCurrentRow();
        if(row != null){
            long time = System.currentTimeMillis();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(time);
            row.setSubmittedOn(timestamp);
            row.setCardStatus("SUBMITTED");
        }
        
    }
    
    public void approve(String approver){
        LincuMemberCardVORowImpl row = (LincuMemberCardVORowImpl)this.getCurrentRow();
        if(row != null){
            long time = System.currentTimeMillis();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(time);
            row.setSubmittedOn(timestamp);
            row.setCardStatus("AUTHORIZED");
        }
        
    }
    
    public void reject(String rejector){
        LincuMemberCardVORowImpl row = (LincuMemberCardVORowImpl)this.getCurrentRow();
        if(row != null){
            long time = System.currentTimeMillis();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(time);
            row.setAuthorizedOn(timestamp);
            row.setCardStatus("REJECTED");
        }
        
    }
}

