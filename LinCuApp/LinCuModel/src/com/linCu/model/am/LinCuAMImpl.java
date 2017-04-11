package com.linCu.model.am;

import com.linCu.model.am.common.LinCuAM;
import com.linCu.model.view.LincuMemberCardDocsVOImpl;
import com.linCu.model.view.LincuMemberCardVOImpl;
import com.linCu.model.view.LincuMemberVOImpl;
import com.linCu.model.view.LincuUserInfoVOImpl;

import com.linCu.model.view.LincuUserInfoVORowImpl;
import com.linCu.model.vvo.LoginVVOImpl;
import java.util.Map;
import com.linCu.model.vvo.LoginVVORowImpl;

import java.util.HashMap;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.server.ApplicationModuleImpl;
import oracle.jbo.server.ViewLinkImpl;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Mar 11 00:25:16 IST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class LinCuAMImpl extends ApplicationModuleImpl implements LinCuAM {
    /**
     * This is the default constructor (do not remove).
     */
    public LinCuAMImpl() {
    }

    /**
     * Container's getter for CreditUnion.
     * @return CreditUnion
     */
    public ViewObjectImpl getCreditUnion() {
        return (ViewObjectImpl) findViewObject("CreditUnion");
    }

    /**
     * Container's getter for LincuUserInfo.
     * @return LincuUserInfo
     */
    public LincuUserInfoVOImpl getLincuUserInfo() {
        return (LincuUserInfoVOImpl) findViewObject("LincuUserInfo");
    }

    /**
     * Container's getter for CreditUnionBranch.
     * @return CreditUnionBranch
     */
    public ViewObjectImpl getCreditUnionBranch() {
        return (ViewObjectImpl) findViewObject("CreditUnionBranch");
    }

    /**
     * Container's getter for LoginView.
     * @return LoginView
     */
    public LoginVVOImpl getLoginView() {
        return (LoginVVOImpl) findViewObject("LoginView");
    }

    /**
     * Container's getter for CreditUnionBranchVL.
     * @return CreditUnionBranchVL
     */
    public ViewLinkImpl getCreditUnionBranchVL() {
        return (ViewLinkImpl) findViewLink("CreditUnionBranchVL");
    }
    
    public String validateLogin(String userName, String password){
        LoginVVOImpl loginView = this.getLoginView();
        loginView.setbindUserName(userName); 
        loginView.executeQuery();
        LoginVVORowImpl row = (LoginVVORowImpl)loginView.first();
        if(row != null){
            String psd = row.getPassword();
            if((password != null) && (password.equals(psd))){
                if("Y".equalsIgnoreCase(row.getFirstLoginFlag())){
                 return "FirstLoginSuccess";
                }else{
                return "Success";
                }
            }else{
                return "InvalidLogin";
            }
        }else{
            return "InvalidUserName";
        }
    }
    
    public Map userSessionInfo(String userName){
        Map userMap = new HashMap<String, String>();
        LoginVVOImpl loginView = this.getLoginView();
        loginView.setbindUserName(userName); 
        loginView.executeQuery();
        LoginVVORowImpl row = (LoginVVORowImpl)loginView.first();
        if(row != null){
            userMap.put("userName", row.getUserName());
            userMap.put("role", row.getRole());
            userMap.put("roleDesc", row.getRoleDescription()); 
        }
        return userMap;
    }
    /**
     * Container's getter for LincuUserInfoVO2.
     * @return LincuUserInfoVO2
     */
    public LincuUserInfoVOImpl getPasswordReset() {
        return (LincuUserInfoVOImpl) findViewObject("PasswordReset");
    }


    public Long userCurrentRow(String userName){
        LoginVVOImpl loginView = this.getLoginView();
        loginView.setbindUserName(userName); 
        loginView.executeQuery();
        LoginVVORowImpl row = (LoginVVORowImpl)loginView.first();
        if(row != null){
            Long userId = row.getUserId();
            if(userId != null){
                return userId;
            }
        }else{
            return null;
        }
        return null;
    }
    
    public void setUserCurrentRow(Long userId){
        System.out.println("---UserId----"+userId);
        LincuUserInfoVOImpl loginView = this.getPasswordReset();
        Row[] rows = loginView.findByKey(new Key(new Object[]{userId}), 1);
        LincuUserInfoVORowImpl row = (LincuUserInfoVORowImpl)rows[0];
        loginView.setCurrentRow(row);
        
    }

    /**
     * Container's getter for LincuMemberVO1.
     * @return LincuMemberVO1
     */
    public LincuMemberVOImpl getLincuMember() {
        return (LincuMemberVOImpl) findViewObject("LincuMember");
    }

    /**
     * Container's getter for LincuMemberCardVO1.
     * @return LincuMemberCardVO1
     */
    public LincuMemberCardVOImpl getLincuMemberCard() {
        return (LincuMemberCardVOImpl) findViewObject("LincuMemberCard");
    }

    /**
     * Container's getter for LincuMemberCardDocsVO1.
     * @return LincuMemberCardDocsVO1
     */
    public LincuMemberCardDocsVOImpl getLincuMemberCardDocs() {
        return (LincuMemberCardDocsVOImpl) findViewObject("LincuMemberCardDocs");
    }

    /**
     * Container's getter for MemberCardToMemberDocsVL1.
     * @return MemberCardToMemberDocsVL1
     */
    public ViewLinkImpl getMemberCardToMemberDocsVL1() {
        return (ViewLinkImpl) findViewLink("MemberCardToMemberDocsVL1");
    }
}

