package com.org.mgws.entity;

import com.org.mgws.base.entity.BaseEntity;

public class TPurchaseRecord extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long id;

    private String customerno;
    
    private Long productid;
    
    private String datefrom;
    
    private String dateto;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustomerno() {
		return customerno;
	}

	public void setCustomerno(String customerno) {
		this.customerno = customerno;
	}

	public Long getProductid() {
		return productid;
	}

	public void setProductid(Long productid) {
		this.productid = productid;
	}

	public String getDatefrom() {
		return datefrom;
	}

	public void setDatefrom(String datefrom) {
		this.datefrom = datefrom;
	}

	public String getDateto() {
		return dateto;
	}

	public void setDateto(String dateto) {
		this.dateto = dateto;
	}

}