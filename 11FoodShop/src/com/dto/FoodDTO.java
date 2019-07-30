package com.dto;

public class FoodDTO {
	private String FCode; //코드명
	private String FKind; //종류
	private String FName; //음식명
	private int FPrice; //가격
	private String FImage; // 이미지명
	public FoodDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FoodDTO(String fCode, String fKind, String fName, int fPrice, String fImage) {
		super();
		FCode = fCode;
		FKind = fKind;
		FName = fName;
		FPrice = fPrice;
		FImage = fImage;
	}
	public String getFCode() {
		return FCode;
	}
	public void setFCode(String fCode) {
		FCode = fCode;
	}
	public String getFKind() {
		return FKind;
	}
	public void setFKind(String fKind) {
		FKind = fKind;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public int getFPrice() {
		return FPrice;
	}
	public void setFPrice(int fPrice) {
		FPrice = fPrice;
	}
	public String getFImage() {
		return FImage;
	}
	public void setFImage(String fImage) {
		FImage = fImage;
	}
	@Override
	public String toString() {
		return "FoodsDTO [FCode=" + FCode + ", FKind=" + FKind + ", FName=" + FName + ", FPrice=" + FPrice + ", FImage="
				+ FImage + "]";
	}
	
}
