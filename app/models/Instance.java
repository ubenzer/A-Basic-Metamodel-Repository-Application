package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
public class Instance extends Model {
   
  @Id
  @GeneratedValue
  public long instanceID;
  
  @ManyToOne
  @JoinColumn(name="entityFK", nullable=false)
  public Entity entity;
}
