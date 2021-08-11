package com.entity;

import java.io.Serializable;

public class Contact implements Serializable {
    private static final long serialVersionUID = 357594945855586053L;
    private Integer contactId;

    private String contactName;

    private String contactEmail;

    private String contextMessage;

    @Override
    public String toString() {
        return "Contact{" +
                "contactId=" + contactId +
                ", contactName='" + contactName + '\'' +
                ", contactEmail='" + contactEmail + '\'' +
                ", contextMessage='" + contextMessage + '\'' +
                '}';
    }

    public Contact() {
    }

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName == null ? null : contactName.trim();
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail == null ? null : contactEmail.trim();
    }

    public String getContextMessage() {
        return contextMessage;
    }

    public void setContextMessage(String contextMessage) {
        this.contextMessage = contextMessage == null ? null : contextMessage.trim();
    }
}