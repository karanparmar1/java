// Generated with g9.

package com.kar.techparts.models;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "photo")
public class Photo implements Serializable {

	
	private static final long serialVersionUID = 1L;

	/** Primary key. */
	protected static final String PK = "id";

	@Id
	@Column(unique = true, nullable = false, length = 10)
	private int id;
	@Column(nullable = false, length = 250)
	private String name;
	@Column(nullable = false, length = 1)
	private boolean status;
	@Column(nullable = false, length = 1)
	private boolean main;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product;

	/** Default constructor. */
	public Photo() {
		super();
	}

	/**
	 * Access method for id.
	 *
	 * @return the current value of id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter method for id.
	 *
	 * @param aId the new value for id
	 */
	public void setId(int aId) {
		id = aId;
	}

	/**
	 * Access method for name.
	 *
	 * @return the current value of name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Setter method for name.
	 *
	 * @param aName the new value for name
	 */
	public void setName(String aName) {
		name = aName;
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
	 *
	 * @param aStatus the new value for status
	 */
	public void setStatus(boolean aStatus) {
		status = aStatus;
	}

	/**
	 * Access method for main.
	 *
	 * @return true if and only if main is currently true
	 */
	public boolean isMain() {
		return main;
	}

	/**
	 * Setter method for main.
	 *
	 * @param aMain the new value for main
	 */
	public void setMain(boolean aMain) {
		main = aMain;
	}

	/**
	 * Access method for product.
	 *
	 * @return the current value of product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * Setter method for product.
	 *
	 * @param aProduct the new value for product
	 */
	public void setProduct(Product aProduct) {
		product = aProduct;
	}

	/**
	 * Compares the key for this instance with another Photo.
	 *
	 * @param other The object to compare to
	 * @return True if other object is instance of class Photo and the key objects
	 *         are equal
	 */
	private boolean equalKeys(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof Photo)) {
			return false;
		}
		Photo that = (Photo) other;
		if (this.getId() != that.getId()) {
			return false;
		}
		return true;
	}

	/**
	 * Compares this instance with another Photo.
	 *
	 * @param other The object to compare to
	 * @return True if the objects are the same
	 */
	@Override
	public boolean equals(Object other) {
		if (!(other instanceof Photo))
			return false;
		return this.equalKeys(other) && ((Photo) other).equalKeys(this);
	}

	/**
	 * Returns a hash code for this instance.
	 *
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
	 *
	 * @return String representation of this instance
	 */
	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer("[Photo |");
		sb.append(" id=").append(getId());
		sb.append("]");
		return sb.toString();
	}

	/**
	 * Return all elements of the primary key.
	 *
	 * @return Map of key names to values
	 */
	public Map<String, Object> getPrimaryKey() {
		Map<String, Object> ret = new LinkedHashMap<String, Object>(6);
		ret.put("id", Integer.valueOf(getId()));
		return ret;
	}

}
