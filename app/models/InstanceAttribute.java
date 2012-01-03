package models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
@Table(name="instance_attribute")
public class InstanceAttribute extends Model {
  
  @ManyToOne
  @JoinColumn(name="attributeFK", nullable=false)
  public Attribute attributeType;
  public long instanceFK;
  public String value;

  public String toString() {
    return attributeType.name + ": " + value;
  }
}
