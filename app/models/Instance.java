package models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
public class Instance extends Model {
   
  @OneToMany(cascade=CascadeType.ALL, mappedBy="instanceFK")
  public Set<InstanceAttribute> atttributes;
  
  @ManyToOne
  @JoinColumn(name="entityFK", nullable=false)
  public models.Entity belongingEntityType;
  
  public String toString() {
    return "Instance of " + belongingEntityType.entityName + " with ID #" + getId();
  }
}
