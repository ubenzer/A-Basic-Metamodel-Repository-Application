package models;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import play.data.validation.CheckWith;
import play.data.validation.Required;
import play.db.jpa.Model;
import validators.InstanceConsistance;

@Entity
public class Instance extends Model {
   
//  @OneToMany(cascade=CascadeType.ALL, mappedBy="instanceFK")
//  public Set<InstanceAttribute> atttributes;
  
  public List<InstanceAttribute> attributes() {
    return InstanceAttribute.find("byInstanceFK", this.id).fetch();
  }
  
  @Required
  @ManyToOne
  @JoinColumn(name="entityFK", nullable=false)
  @CheckWith(InstanceConsistance.class)
  public models.Entity belongingEntityType;
  
  public String getValues(boolean onlyIdentifiers) {
    String out = "[";
    if(attributes() != null) {
      for(InstanceAttribute at : attributes()) {
        if((onlyIdentifiers && at.attributeType.isPartOfKeyAttib) || !onlyIdentifiers) {
          out = out.concat((at.attributeType.name + ": \"" + at.value + ", \""));
        }
      }
    }
    if(out.equals("[")) {
      return "[]";
    }
    return out.substring(0, out.length()-3).concat("\"]");
  }
  public String toString() {
    return belongingEntityType.entityName + ": " + getValues(true);
  }
}
