package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;

@Entity
public class Relationship extends Model {
    
  @ManyToOne
  @JoinColumn(name="entityIdentifierAttributeFK", nullable=false)
  public Attribute primaryKeyAtrribute;
  
  @ManyToOne
  @JoinColumn(name="entityForeignIdentifierAttributeFK", nullable=false)
  public Attribute foreignKeyAttribute;

}
