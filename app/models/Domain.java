package models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import play.db.jpa.Model;

@javax.persistence.Entity
public class Domain extends Model {
    
  public String name;
  public String constraintExpression;
  
  @ManyToOne
  @JoinColumn(name="attributetypeFK", nullable=false)
  public AttributeType attributeType;
}
