package models;

import java.util.List;

import play.data.validation.Required;
import play.db.jpa.Model;

@javax.persistence.Entity
public class Entity extends Model {
    
  @Required
  public String entityName;
  
  public List<Attribute> getAttributes() {
    return Attribute.find("byEntityFK", this.id).fetch();
  }
  
  public String toString() {
    return entityName;
  }
}
