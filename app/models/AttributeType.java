package models;

import javax.persistence.Entity;

import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class AttributeType extends Model {
    
  @Required
  public String name;

  public String toString() {
    return name;
  }
}
