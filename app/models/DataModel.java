package models;

import javax.persistence.Entity;

import play.db.jpa.Model;

@Entity
public class DataModel extends Model {
    
  private String name;
  
  public String getName() {
    return name;
  }
}
