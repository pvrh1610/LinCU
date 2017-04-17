package com.linCu.model.am.common;

import java.util.Map;

import oracle.jbo.ApplicationModule;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Mar 11 00:34:52 IST 2017
// ---------------------------------------------------------------------
public interface LinCuAM extends ApplicationModule {
    String validateLogin(String userName, String password);

    Map userSessionInfo(String userName);

    Long userCurrentRow(String userName);

    void setUserCurrentRow(Long userId);

    String userExists(String userName);

    void requestCard(String requestor, String creditUnionId);

    boolean isAllRequiredDocumentsUploaded();

    void addRequiredDcosRecords();
}

