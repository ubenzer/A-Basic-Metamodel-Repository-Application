package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import play.data.validation.CheckWith;
import play.data.validation.MaxSize;
import play.data.validation.Required;
import play.db.jpa.Model;
import validators.SubtypingConsistance;

@Entity
public class Subtyping extends Model {
    
  @ManyToOne
  @JoinColumn(name="supertypeEntityFK", nullable=false)
  @Required
  public models.Entity supertypeEntity;
  
  @ManyToOne
  @JoinColumn(name="subtypeEntityFK", nullable=false)
  @Required
  public models.Entity subtypeEntity;

  @ManyToOne
  @JoinColumn(name="categorizingAttributeID", nullable=false)
  @Required
  @CheckWith(SubtypingConsistance.class)
  public Attribute catgorizingAttribute;
  
  @Lob
  @Required
  @MaxSize(1000)
  public String categorizingValue;
  
  public String toString() {
    return supertypeEntity.entityName + " -> " + subtypeEntity.entityName;
  }
}
