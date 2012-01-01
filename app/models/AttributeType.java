package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

@Entity
public class AttributeType extends Model {
    
  String name;
  
}
