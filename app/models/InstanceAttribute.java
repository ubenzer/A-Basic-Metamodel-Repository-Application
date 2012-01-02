package models;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
@Table(name="instance_attribute")
public class InstanceAttribute extends Model {
  
  
  @ManyToOne
  @JoinColumn(name="instanceFK", nullable=true)
  public Instance instance;
  
  @ManyToOne
  @JoinColumn(name="attributeFK", nullable=true)
  public Attribute attribute;
  
  public String value;

}
