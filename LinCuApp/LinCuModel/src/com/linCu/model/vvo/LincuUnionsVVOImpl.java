package com.linCu.model.vvo;

import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed May 03 21:56:40 IST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class LincuUnionsVVOImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public LincuUnionsVVOImpl() {
    }

    /**
     * Returns the variable value for bindCreditUnionId.
     * @return variable value for bindCreditUnionId
     */
    public String getbindCreditUnionId() {
        return (String) ensureVariableManager().getVariableValue("bindCreditUnionId");
    }

    /**
     * Sets <code>value</code> for variable bindCreditUnionId.
     * @param value value to bind as bindCreditUnionId
     */
    public void setbindCreditUnionId(String value) {
        ensureVariableManager().setVariableValue("bindCreditUnionId", value);
    }
}

