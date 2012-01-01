package models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

import play.db.jpa.Model;

@javax.persistence.Entity
public class Entity extends Model {
    
  public String entityName;
  
  @OneToMany(cascade=CascadeType.ALL, mappedBy="entityFK")
  public Set<Attribute> attributes;
}
