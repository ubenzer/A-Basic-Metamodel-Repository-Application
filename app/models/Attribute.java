package models;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import play.data.validation.Required;
import play.db.jpa.Model;

@Entity
public class Attribute extends Model {
    
  @Required
  public String name;
   
  @Required
  @ManyToOne
  @JoinColumn(name="entityFK", nullable=false)
  public models.Entity belongingEntity;
  
  public boolean isPartOfKeyAttib;
  
  @Required
  @ManyToOne
  @JoinColumn(name="attributetypeFK", nullable=false)
  public AttributeType belongingAttributeType;
  
  @ManyToOne
  @JoinColumn(name="domainFK", nullable=true)
  public Domain domain;
  
  public String toString() {
    return this.belongingEntity + "." + name;
  }
}
