package models;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.data.validation.CheckWith;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;
import validators.InstanceAttributeConsistance;

@Entity
@Table(name="instance_attribute")
public class InstanceAttribute extends Model {
  
  @Required
  @ManyToOne
  @JoinColumn(name="instanceFK", nullable=false)
  @CheckWith(InstanceAttributeConsistance.class)
  public Instance belongingInstance;
  
  @ManyToOne
  @JoinColumn(name="attributeFK", nullable=false)
  @Required
  public Attribute attributeType;

  @MaxSize(1000)
  @Lob
  public String value;

  public String toString() {
    return value;
  }
  public models.Entity getBelongingEntity() {
    return belongingInstance.belongingEntityType;
  }
}
