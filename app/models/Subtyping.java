package models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;

@Entity
public class Subtyping extends Model {
    
  @ManyToOne
  @JoinColumn(name="supertypeEntityFK", nullable=false)
  public models.Entity supertypeEntity;
  
  @ManyToOne
  @JoinColumn(name="subtypeEntityFK", nullable=false)
  public models.Entity subtypeEntity;

  @ManyToOne
  @JoinColumn(name="categorizingAttributeID", nullable=false)
  public Attribute catgorizingAttribute;
  
  @Lob
  public String categorizingValue;
}
