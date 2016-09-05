package com.chenfeng.hy.domain.enums;

public enum  ImgTypeEnum{
    
    NEWS(1, "news"), 
    BANNER(2, "banner"),
    CASES(3, "cases");
    
    private int value;
    
    private String label;
    
    private ImgTypeEnum(int value, String label) {
        this.value = value;
        this.label = label;
    }
    
    public static ImgTypeEnum valueOf (int value){
        for (ImgTypeEnum c : ImgTypeEnum.values()) {
            if (c.getValue() == value) {
                return c;
            }
        }
        return null;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
    
}

