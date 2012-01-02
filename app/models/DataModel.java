package models;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import play.db.jpa.Model;

@Entity
public class DataModel extends Model {
    
  public String name;
  
  @ManyToMany
  @JoinTable(name="datamodelattribute", 
      joinColumns={@JoinColumn(name="datamodelFK", referencedColumnName="ID")},
      inverseJoinColumns={@JoinColumn(name="attributeFK", referencedColumnName="ID")})
  public Set<Attribute> attributes;
  
  @ManyToMany
  @JoinTable(name="datamodelentity", 
      joinColumns={@JoinColumn(name="datamodelFK", referencedColumnName="ID")},
      inverseJoinColumns={@JoinColumn(name="entityFK", referencedColumnName="ID")})
  public Set<models.Entity> entities;
  
  @ManyToMany
  @JoinTable(name="datamodelrelationship", 
  joinColumns={@JoinColumn(name="datamodelFK", referencedColumnName="ID")},
  inverseJoinColumns={@JoinColumn(name="relationshipFK", referencedColumnName="ID")})
  public Set<Relationship> relationships;
  
  @ManyToMany
  @JoinTable(name="datamodelsubtyping", 
  joinColumns={@JoinColumn(name="datamodelFK", referencedColumnName="ID")},
  inverseJoinColumns={@JoinColumn(name="subtypingFK", referencedColumnName="ID")})
  public Set<Subtyping> subtypings;
}
