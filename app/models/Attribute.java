package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;

@Entity
public class Attribute extends Model {
    
  public String name;
  public long entityFK;
  public long isPartOfKeyAttib;
  @ManyToOne
  @JoinColumn(name="attributetypeFK", nullable=false)
  public AttributeType attributeType;
  //public long attributetypeFK;
  
  @ManyToOne
  @JoinColumn(name="domainFK", nullable=true)
  public Domain domain;
}
