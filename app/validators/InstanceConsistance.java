package validators;

import models.Entity;
import models.Instance;
import models.InstanceAttribute;
import play.data.validation.Check;

public class InstanceConsistance extends Check {

  @Override
  public boolean isSatisfied(Object validatedObject, Object value) {
   
    Instance ins = (Instance)validatedObject;
    Entity ent = (Entity)value;
    
    if(ins.attributes() == null) return true;
    for(InstanceAttribute ia: ins.attributes()) {
      if(ia.attributeType.belongingEntity.getId() != ent.getId()) {
        setMessage("validation.instanceInconsistency", ia.attributeType.belongingEntity.getId().toString(), ent.getId().toString());
        return false;
      }
    }
    return true;
  }

}
