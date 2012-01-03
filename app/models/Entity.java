package models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

import play.db.jpa.Model;

@javax.persistence.Entity
public class Entity extends Model {
    
  public String entityName;
  
  public String getAttributes() {
    return Attribute.find("byEntityFK", this.id).fetch().toString();
  }
  
  public String toString() {
    return entityName;
  }
}
