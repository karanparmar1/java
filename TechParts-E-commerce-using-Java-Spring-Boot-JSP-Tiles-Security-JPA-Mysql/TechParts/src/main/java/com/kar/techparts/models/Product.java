// Generated with g9.

package com.kar.techparts.models;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	/** Primary key. */
	protected static final String PK = "id";

	@Id
	@Column(unique = true, nullable = false, length = 10)
	private int id;
	@Column(nullable = false, length = 250)
	private String name;
	@Column(nullable = false, precision = 6, scale = 2)
	private double price;
	@Column(nullable = false, length = 10)
	private int quantity;
	@Column(nullable = false)
	private String description;
	@Column(nullable = false)
	private String details;
	@Column(nullable = false, length = 1)
	private boolean status=true;
	@Column(nullable = false, length = 1)
	private boolean featured;
	@OneToMany(mappedBy = "product")
	private Set<Photo> photo;
	@ManyToOne(optional = false)
	@JoinColumn(name = "category_id", nullable = false)
	private Category category;
	@ManyToOne(optional = false)
	@JoinColumn(name = "company_id", nullable = false)
	private Company company;

	/** Default constructor. */
	public Product() {
		super();
	}

	/**
	 * Access method for id. 
	 * @return the current value of id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter method for id. 
	 * @param aId the new value for id
	 */
	public void setId(int aId) {
		id = aId;
	}

	/**
	 * Access method for name. 
	 * @return the current value of name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Setter method for name. 
	 * @param aName the new value for name
	 */
	public void setName(String aName) {
		name = aName;
	}

	/**
	 * Access method for price. 
	 * @return the current value of price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * Setter method for price. 
	 * @param aPrice the new value for price
	 */
	public void setPrice(double aPrice) {
		price = aPrice;
	}

	/**
	 * Access method for quantity. 
	 * @return the current value of quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * Setter method for quantity. 
	 * @param aQuantity the new value for quantity
	 */
	public void setQuantity(int aQuantity) {
		quantity = aQuantity;
	}

	/**
	 * Access method for description. 
	 * @return the current value of description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * Setter method for description. 
	 * @param aDescription the new value for description
	 */
	public void setDescription(String aDescription) {
		description = aDescription;
	}

	/**
	 * Access method for details. 
	 * @return the current value of details
	 */
	public String getDetails() {
		return details;
	}

	/**
	 * Setter method for details.
	 *
	 * @param aDetails the new value for details
	 */
	public void setDetails(String aDetails) {
		details = aDetails;
	}

	/**
	 * Access method for status.
	 *
	 * @return true if and only if status is currently true
	 */
	public boolean isStatus() {
		return status;
	}

	/**
	 * Setter method for status. 
	 * @param aStatus the new value for status
	 */
	public void setStatus(boolean aStatus) {
		status = aStatus;
	}

	/**
	 * Access method for featured. 
	 * @return true if and only if featured is currently true
	 */
	public boolean isFeatured() {
		return featured;
	}

	/**
	 * Setter method for featured. 
	 * @param aFeatured the new value for featured
	 */
	public void setFeatured(boolean aFeatured) {
		featured = aFeatured;
	}

	/**
	 * Access method for photo.
	 * @return the current value of photo
	 */
	public Set<Photo> getPhoto() {
		return photo;
	}

	/**
	 * Setter method for photo. 
	 * @param aPhoto the new value for photo
	 */
	public void setPhoto(Set<Photo> aPhoto) {
		photo = aPhoto;
	}

	/**
	 * Access method for category. 
	 * @return the current value of category
	 */
	public Category getCategory() {
		return category;
	}

	/**
	 * Setter method for category. 
	 * @param aCategory the new value for category
	 */
	public void setCategory(Category aCategory) {
		category = aCategory;
	}

	/**
	 * Access method for company. 
	 * @return the current value of company
	 */
	public Company getCompany() {
		return company;
	}

	/**
	 * Setter method for company. 
	 * @param aCompany the new value for company
	 */
	public void setCompany(Company aCompany) {
		company = aCompany;
	}

	/**
	 * Compares the key for this instance with another Product. 
	 * @param other The object to compare to
	 * @return True if other object is instance of class Product and the key objects
	 *         are equal
	 */
	private boolean equalKeys(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof Product)) {
			return false;
		}
		Product that = (Product) other;
		if (this.getId() != that.getId()) {
			return false;
		}
		return true;
	}

	/**
	 * Compares this instance with another Product. 
	 * @param other The object to compare to
	 * @return True if the objects are the same
	 */
	@Override
	public boolean equals(Object other) {
		if (!(other instanceof Product))
			return false;
		return this.equalKeys(other) && ((Product) other).equalKeys(this);
	}

	/**
	 * Returns a hash code for this instance. 
	 * @return Hash code
	 */
	@Override
	public int hashCode() {
		int i;
		int result = 17;
		i = getId();
		result = 37 * result + i;
		return result;
	}

	/**
	 * Returns a debug-friendly String representation of this instance. 
	 * @return String representation of this instance
	 */
	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer("[Product |");
		sb.append(" id=").append(getId());
		sb.append("]");
		return sb.toString();
	}

	/**
	 * Return all elements of the primary key. 
	 * @return Map of key names to values
	 */
	public Map<String, Object> getPrimaryKey() {
		Map<String, Object> ret = new LinkedHashMap<String, Object>(6);
		ret.put("id", Integer.valueOf(getId()));
		return ret;
	}

}
