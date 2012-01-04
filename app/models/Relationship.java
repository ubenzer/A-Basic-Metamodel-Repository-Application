package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import play.data.validation.CheckWith;
import play.data.validation.Required;
import play.db.jpa.Model;
import validators.RelationshipConsistance;

@Entity
public class Relationship extends Model {
    
  @ManyToOne
  @JoinColumn(name="entityIdentifierAttributeFK", nullable=false)
  @Required
  @CheckWith(RelationshipConsistance.class)
  public Attribute primaryKeyAtrribute;
  
  @ManyToOne
  @JoinColumn(name="entityForeignIdentifierAttributeFK", nullable=false)
  @Required
  public Attribute foreignKeyAttribute;

  public String toString() {
    return "REL#" + this.id + " " + primaryKeyAtrribute.name + " PK to FK " + foreignKeyAttribute.name;
  }
  
  public models.Entity getPKAttrEntity() {
    return this.primaryKeyAtrribute.belongingEntity;
  }
  public models.Entity getFKAttrEntity() {
    return this.foreignKeyAttribute.belongingEntity;
  }
}
